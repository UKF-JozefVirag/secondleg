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
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

@WebServlet(name = "pridat_inzerat")
public class pridat_inzerat extends HttpServlet {
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
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        vypisCss(out);
        vypisHeader(out);
        vypisBody(out);
        vypisFooter(out);

        if(con==null){
            out.println("Nie je spojenie na databázu!");
            return;
        }
        String operacia = request.getParameter("operacia");
        if (operacia==null) operacia="";
//        out.println("operacia: " + operacia);

        if (operacia.equals("pridat")){
            pridajPolozku(out,request.getParameter("pohlavie"), request.getParameter("nadpis"), request.getParameter("popis"), request.getParameter("meno"),
                    request.getParameter("email"), request.getParameter("tel_c"), request.getParameter("heslo"),
                    request.getParameter("cena"), request.getParameter("kategoria"),
                    request.getParameter("psc"), request.getParameter("obrazok"));
        }
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
        out.println("#domov:hover, #onas:hover, #tab:hover, #faq:hover{\n" +
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

        out.println(".pridanie{\n" +
                "    text-align: center;\n" +
                "    font-size: 0.6875em;\n" +
                "}");
        out.println("body{" +
                "overflow-x:hidden;" +
                "}");
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

    private void vypisBody(PrintWriter out){
        out.println("<form action='pridat_inzerat' method='post' class='pridanie'>");

        out.println("<div class='row'>");
        out.println("<label for='pohlavie' class='col-sm-4 col-md-3 col-xl-5'>pohlavie: </label>");
        out.println("<select name='pohlavie' class='col-sm-4 col-md-3 col-xl-5' id='pohl'>" );
        out.println("                <option value='Muz'>muži</option>" );
        out.println("                <option value='Zena'>ženy</option>" );
        out.println("                <option value='Unisex'>unisex</option>" );
        out.println("</select> " );
        out.println("</div>");

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5'  for='kategoria'>kategória: </label>" );
        out.println("<select class='col-sm-4 col-md-3 col-xl-5'  name='kategoria' id='kat'>" );
        out.println("                <option value='1'>mikiny</option>" );
        out.println("                <option value='2'>tričká</option>" );
        out.println("                <option value='3'>bundy</option>" );
        out.println("                <option value='4'>sukne</option>" );
        out.println("                <option value='5'>šaty</option>" );
        out.println("                <option value='6'>nohavice</option>" );
        out.println("                <option value='7'>topánky</option>" );
        out.println("                <option value='8'>doplnky</option>" );
        out.println("                <option value='9'>čiapky</option>" );
        out.println("                <option value='10'>iné</option>" );
        out.println("</select> " );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5'  for='nadpis'>nadpis: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='nadpis' type='text' maxlength='20' required> " );
        out.println("</div>" );

        out.println("<div class='row'>  " );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5'  for='text'>text: </label> " );
        out.println("<textarea class='col-sm-4 col-md-3 col-xl-5'  name='popis' id='texta' cols='30' rows='10' maxlength='300' required></textarea>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label  class='col-sm-4 col-md-3 col-xl-5' for='cena'>cena: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='cena'  type='text' required>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='psč' maxlength='5' required>psč: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='psc' type='text'>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='obrazky'>obrazky: </label>" );
        out.println("<input class='col-sm-2 col-md-2 col-xl-2' type='file' id='img' name='obrazok' accept='image/*'>" );
        out.println("<input class='col-sm-2 col-md-2 col-xl-2' type='file' id='img' name='img' accept='image/*'>" );
        out.println("<input class='col-sm-2 col-md-2 col-xl-2' type='file' id='img' name='img' accept='image/*'> " );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='meno'>meno: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='meno' type='text' maxlength='20' required>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='email'>email: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='email' type='text' maxlength='100' required>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='telefonne_cislo'>telefonne cislo: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='tel_c' type='text' maxlength='14' required>" );
        out.println("</div>" );

        out.println("<div class='row'>" );
        out.println("<label class='col-sm-4 col-md-3 col-xl-5' for='heslo'>heslo: </label>" );
        out.println("<input class='col-sm-4 col-md-3 col-xl-5' name='heslo' type='password' required>" );
        out.println("</div>" );

        out.println("<div class='row justify-content-between'>");
        out.println("<input type='hidden' name='operacia' style='width=1px' value='pridat'>");
        out.println("<input class='col-sm-4 col-md-3 col-xl-5 offset-xl-5 offset-lg-3 offset-md-3 offset-sm-4 odosli' type='submit' value='odoslať'>");
        out.println("</div>");
        out.println("</form>");
    }

    private void pridajPolozku(PrintWriter out, String pohlavie, String nazov, String popis, String meno, String email, String tel_c, String heslo, String cena, String idKategorie, String psc, String obrazok) {
        try{
            Statement stmt =con.createStatement();
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = sdf.format(date);

            String sql = "INSERT INTO inzerat (pohlavie, nazov, popis, meno, email, tel_c, heslo, datum_pridania, cena, idkategorie, psc, obrazok) VALUES (";
            sql+= "'" + pohlavie + "', ";
            sql+= "'" + nazov + "', ";
            sql+= "'" + popis + "', ";
            sql+= "'" + meno + "', ";
            sql+= "'" + email + "', ";
            sql+= "'" + tel_c + "', ";
            sql+= "'" + heslo + "', ";
            sql+= "'" + strDate + "', ";
            sql+= "'" + cena + "', ";
            sql+= "'" + idKategorie + "', ";
            sql+= "'" + psc + "', ";
            sql+= "'" + obrazok +"')";
//            String sql = "INSERT INTO inzerat (pohlavie, nazov, popis, email, tel_c, heslo, datum_pridania, cena, idKategorie, psc, idObrazky) VALUES ('M', 'Tricko', 'asdads', 'adsadsasd', '01010101', 'asdasd', '21 21', '21', '2', '12112', '2')";
            int poc = stmt.executeUpdate(sql);
            out.println("Pridaných : " + poc + " zaznamov");

        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    private void vypisFooter(PrintWriter out) {
        out.println("<br><br><br><br><br>");
        out.println("<ul style='font-size:0.6875em;' class=\"nav justify-content-center\">\n" +
                "        <li class=\"nav-item\">\n" +
                "          <a class=\"nav-link\" href=\"index.html\" id=\"domov\">domov</a>\n" +
                "        </li>\n" +
                "        <li class=\"nav-item\">\n" +
                "          <a class=\"nav-link\" href=\"o_nas.html\" id=\"onas\">>napíšte nám</a>\n" +
                "        </li>\n" +
                "        <li class=\"nav-item\">\n" +
                "          <a class=\"nav-link\" href=\"/napiste.html\" id=\"s\"><img src=\"img/united-kingdom.png\"\n" +
                "            style=\"width: 20px\" alt=\"\" onmouseover=\"this.src='img/slovakia.png'\" onmouseout=\"this.src='img/united-kingdom.png'\" id=\"sk\"></a>\n" +
                "        </li>\n" +
                "        <li class=\"nav-item\">\n" +
                "          <a class=\"nav-link\" href=\"#\" id=\"tab\">veľkosti</a>\n" +
                "        </li>\n" +
                "        <li class=\"nav-item\">\n" +
                "            <a class=\"nav-link\" href=\"#\" id=\"faq\">f.a.q.</a>\n" +
                "          </li>\n" +
                "    </ul>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
