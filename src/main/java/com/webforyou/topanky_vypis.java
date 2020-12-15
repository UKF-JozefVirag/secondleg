package com.webforyou;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "topanky_vypis")
public class topanky_vypis extends HttpServlet {
    Connection con = null;

    @Override
    public void init() throws ServletException{
        super.init();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/secondleg", "root", "");
        }catch (Exception ex) {
            ex.getMessage();}
    }

    @Override
    public void destroy() {
        try{
            con.close();
        } catch (Exception ex) {}
        super.destroy();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        if(con==null){
            out.println("Nie je spojenie na databázu!");
            return;
        }
        String operacia = request.getParameter("operacia");
        vypisCss(out);
        vypisHeader(out);
        vypisFiltre(out);
        out.println("<div class='row justify-content-center'>");
        vypisVsetko(out);
        out.println("</div>");
        vypisFooter(out);


    }

    private void vypisVsetko(PrintWriter out) {
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM inzerat INNER JOIN kategorie ON inzerat.idKategorie = kategorie.idKategorie WHERE Nazov_kategorie = 'Topánky' ORDER BY idProduktu DESC");

            while(rs.next()){
                String pohl = "";

                if(rs.getString("pohlavie").equals("Muz")){
                    pohl = "lightblue";
                }
                else if(rs.getString("pohlavie").equals("Zena")){
                    pohl = "pink";
                }
                else {
                    pohl = "";
                }
                out.println("<div class='card col-sm-3 col-md-3 col-lg-2 col-xl-2 m-3 shadow' style='background-color:" + pohl + "; '>");
                out.println("<p class='card-text text-center'>"+rs.getString("datum_pridania")+"</p>");
//                out.println("<button class='card-text text-left' value='vymazat' name='operacia' style='background-color:transparent; width:30px; color: black; border:0px; outline:none;'>❌</button>");


                if(rs.getString("Nazov").toLowerCase().contains("damska bluzka".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/1bluse1.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }

                else if(rs.getString("Nazov").toLowerCase().contains("nahrdelnik".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/4necklece.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }

                else if(rs.getString("Nazov").toLowerCase().contains("opasok".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/1belt1.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }

                else if(rs.getString("Nazov").toLowerCase().contains("damska sukna".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/damska-sukna.jpg' alt='card image' style='width:100%; margin-top: 20px;'>");
                }

                else if(rs.getString("Nazov").toLowerCase().contains("timberland".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/timberland_shoes.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }
                else if(rs.getString("Nazov").toLowerCase().contains("panske tricko biele".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/biele_tricko_panske.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }
                else if(rs.getString("Nazov").toLowerCase().contains("hnede topanky".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/shoes_brown.JPG' alt='card image' style='width:100%; margin-top: 20px;'>");
                }
                else if(rs.getString("Nazov").toLowerCase().contains("panske tricko cierne".toLowerCase())){
                    out.println("<img class='card-img-top' src='img/oblecenie/cierne_tricko_panske.jpg' alt='card image' style='width:100%; margin-top: 20px;'>");
                }
                else {}

                out.println("<div class='card-body'>");
                out.println("<h4 class='card-title'>"+ rs.getString("nazov") + "</h4>");
                out.println("<p class='card-text'>"+rs.getString("popis")+"</p>");
                out.println("<p class='card-text'>meno: "+rs.getString("meno")+"</p>");
                out.println("<p class='card-text'>cena: " + rs.getString("cena") + "€</p>");
                if(rs.getString("email")==null){
                    return;
                }else {
                    out.println("<p class='card-text'>email: " + rs.getString("email") + "</p>");
                }

                if(rs.getString("tel_c")==null){
                    return;
                }else {
                    out.println("<p class='card-text'>telefonne číslo: " + rs.getString("tel_c") + "</p>");
                }
                out.println("</div>");
                out.println("</div>");
                pohl = "";
            }
            stmt.close();
        }catch (Exception e ) {
            out.println(e.getMessage());
            System.out.println(e.getMessage());
        }
    }

    private void vypisFiltre(PrintWriter out) {
        out.println("<ul style='font-size:0.6875em;' class='nav justify-content-center'>");
        out.println("<li class='nav-item'>");
        out.println("<form action='obchod_servlet' method='post'><button type='hidden' name='operacia' value='zobrazVsetko' class='nav-link' id='btn-nav'>všetko</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='mikiny_vypis' method='post'><button type='hidden' name='operacia' value='zobrazMikiny' class='nav-link' id='btn-nav'>mikiny</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='tricka_vypis' method='post'><button type='hidden' name='operacia' value='zobrazTricka' class='nav-link' id='btn-nav'>tričká</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='bundy_vypis' method='post'><button type='hidden' name='operacia' value='zobrazBundy' class='nav-link' id='btn-nav'>bundy</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='sukne_vypis' method='post'><button type='hidden' name='operacia' value='zobrazSukne' class='nav-link' id='btn-nav'>sukne</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='saty_vypis' method='post'><button type='hidden' name='operacia' value='zobrazSaty' class='nav-link' id='btn-nav'>šaty</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='nohavice_vypis' method='post'><button type='hidden' name='operacia' value='zobrazNohavice' class='nav-link' id='btn-nav'>nohavice</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='topanky_vypis' method='post'><button type='hidden' name='operacia' value='zobrazTopanky' class='nav-link' id='btn-nav'>topánky</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='doplnky_vypis' method='post'><button type='hidden' name='operacia' value='zobrazDoplnky' class='nav-link' id='btn-nav'>doplnky</button></form>");
        out.println("</li>");
        out.println("<li class='nav-item'>");
        out.println("<form action='ciapky_vypis' method='post'><button type='hidden' name='operacia' value='zobrazCiapky' class='nav-link' id='btn-nav'>čiapky</button></form>");
        out.println("</li>");
        out.println("</ul>");
    }

    private void vypisCss(PrintWriter out){
        out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n" +
                "     <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\n" +
                "     <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n" +
                "     <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\n" +
                "     <link href=\"https://fonts.googleapis.com/css2?family=Courier+Prime:ital@0;1&display=swap\" rel=\"stylesheet\"> \n" +
                "     <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">");
        out.println("<title>asdasd</title>");
        out.println("<body>");
        out.println("<style>");
        out.println("*{font-family: 'Courier New', Courier, monospace;}");
        out.println(".nav{\n" +
                "    font-size:0.6875em; \n" +
                "}\n" +
                "\n" +
                ".nav>li>a{\n" +
                "    padding: 0;\n" +
                "    margin: 20px;\n" +
                "    color:black\n" +
                "}");
        out.println("#domov:hover, #obchod:hover, #tab:hover, #faq:hover{\n" +
                "    background-color: #ff0000;\n" +
                "}");
        out.println("width: 13px;\\n\" +\n" +
                "                \"    height: 400px;\\n\" +\n" +
                "                \"    background-color: #000000;\\n\" +\n" +
                "                \"    transform: rotate(-45deg);\\n\" +\n" +
                "                \"    position: fixed;\\n\" +\n" +
                "                \"    bottom: 80%;\\n\" +\n" +
                "                \"    left: 95%;\\n\" +\n" +
                "                \"    overflow: hidden;");

        out.println(".header{\n" +
                "    color: #ff0000;\n" +
                "    text-align: center;\n" +
                "    margin-top: 3%;\n" +
                "}");

        out.println(".rectangle{\n" +
                "    width: 13px;\n" +
                "    height: 400px;\n" +
                "    background-color: #000000;\n" +
                "    transform: rotate(-45deg);\n" +
                "    position: fixed;\n" +
                "    bottom: 80%;\n" +
                "    left: 95%;\n" +
                "    overflow: hidden;\n" +
                "}");
        out.println("body{" +
                "overflow-x:hidden;" +
                "}");

        out.println("#btn-nav{" +
                "background-color: transparent;" +
                "border: 0px;" +
                "font-size: 1.5em;" +
                "}");

        out.println("#btn-nav:hover{" +
//                "text-shadow: 0 0 10px #ff0000, 0 0 10px #ff0000, 0 0 10px #ff0000, 0 0 10px #ff0000;
                "color: #ff0000;" +
                "}");

        out.println("button::-moz-focus-inner {\n" +
                "  border: 0;\n" +
                "}");
        out.println("");
        out.println("</style>");
        out.println("</body>");
    }


    private void vypisHeader(PrintWriter out){
        out.println("<div class=\"rectangle\"></div>");
        out.println("<div class=\"header\" style='color: #ff0000;\n" +
                "    text-align: center;\n" +
                "    margin-top: 3%;'>\n" +
                "        <h1 class=\"display-4\">second leg</h1>\n" +
                "    </div>");
        out.println("<br><br><br><br><br>");
    }



    private void vypisFooter(PrintWriter out) {
        out.println("<br><br><br><br><br>");
        out.println("<ul style='font-size:0.6875em;' class='nav justify-content-center'>" +
                "        <li class='nav-item'>" +
                "          <a class='nav-link' href='index.html' id='domov'>domov</a>" +
                "        </li>" +
                "        <li class='nav-item'>" +
                "          <form action='pridat_inzerat' method='post'><button style='background-color:transparent; border: 0px; line-height: 4;' type='hidden' name='operacia' value='obchod' class='nav-link' id='onas'>pridat inzerat</button></form>" +
                "        </li>" +
                "        <li class='nav-item'>" +
                "          <a class='nav-link' href='/napiste.html' id='s'><img src='img/united-kingdom.png'" +
                "            style='width: 20px' alt='EN' onmouseover='this.src='img/slovakia.png'' onmouseout='this.src='img/united-kingdom.png'' id='sk'></a>" +
                "        </li>" +
                "        <li class='nav-item'>" +
                "          <a class='nav-link' href='tabulka.html' id='tab'>veľkosti</a>" +
                "        </li>" +
                "        <li class='nav-item'>" +
                "            <a class='nav-link' href='#' id='faq'>f.a.q.</a>" +
                "          </li>" +
                "    </ul>");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
