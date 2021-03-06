-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 08:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secondleg`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresy`
--

CREATE TABLE `adresy` (
  `PSC` varchar(10) CHARACTER SET latin1 NOT NULL,
  `Okres` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovak_ci;

--
-- Dumping data for table `adresy`
--

INSERT INTO `adresy` (`PSC`, `Okres`) VALUES
('957 01', 'Bánovce nad Bebravou'),
('957 03', 'Bánovce nad Bebravou'),
('956 36', 'Bánovce nad Bebravou'),
('956 37', 'Bánovce nad Bebravou'),
('956 53', 'Bánovce nad Bebravou'),
('956 55', 'Bánovce nad Bebravou'),
('956 41', 'Bánovce nad Bebravou'),
('956 38', 'Bánovce nad Bebravou'),
('956 54', 'Bánovce nad Bebravou'),
('956 35', 'Bánovce nad Bebravou'),
('956 52', 'Bánovce nad Bebravou'),
('976 11', 'Banská Bystrica'),
('976 62', 'Banská Bystrica'),
('974 01', 'Banská Bystrica'),
('976 03', 'Banská Bystrica'),
('976 39', 'Banská Bystrica'),
('976 33', 'Banská Bystrica'),
('976 61', 'Banská Bystrica'),
('974 05', 'Banská Bystrica'),
('976 37', 'Banská Bystrica'),
('976 31', 'Banská Bystrica'),
('976 34', 'Banská Bystrica'),
('976 55', 'Banská Bystrica'),
('976 96', 'Banská Bystrica'),
('976 13', 'Banská Bystrica'),
('976 02', 'Banská Bystrica'),
('976 81', 'Banská Bystrica'),
('969 01', 'Banská Štiavnica'),
('966 15', 'Banská Štiavnica'),
('969 82', 'Banská Štiavnica'),
('969 73', 'Banská Štiavnica'),
('969 72', 'Banská Štiavnica'),
('969 81', 'Banská Štiavnica'),
('086 41', 'Bardejov'),
('086 37', 'Bardejov'),
('085 01', 'Bardejov'),
('086 31', 'Bardejov'),
('086 42', 'Bardejov'),
('086 35', 'Bardejov'),
('086 14', 'Bardejov'),
('086 04', 'Bardejov'),
('087 01', 'Bardejov'),
('086 11', 'Bardejov'),
('086 43', 'Bardejov'),
('086 02', 'Bardejov'),
('086 12', 'Bardejov'),
('086 46', 'Bardejov'),
('086 45', 'Bardejov'),
('086 22', 'Bardejov'),
('086 06', 'Bardejov'),
('086 36', 'Bardejov'),
('086 33', 'Bardejov'),
('086 05', 'Bardejov'),
('086 21', 'Bardejov'),
('086 01', 'Bardejov'),
('976 64', 'Brezno'),
('976 53', 'Brezno'),
('977 01', 'Brezno'),
('976 52', 'Brezno'),
('976 98', 'Brezno'),
('976 68', 'Brezno'),
('976 45', 'Brezno'),
('976 75', 'Brezno'),
('976 57', 'Brezno'),
('976 44', 'Brezno'),
('976 97', 'Brezno'),
('976 69', 'Brezno'),
('976 56', 'Brezno'),
('976 66', 'Brezno'),
('976 71', 'Brezno'),
('976 73', 'Brezno'),
('976 67', 'Brezno'),
('962 12', 'Detva'),
('962 05', 'Detva'),
('962 75', 'Detva'),
('962 25', 'Detva'),
('962 04', 'Detva'),
('985 45', 'Detva'),
('985 51', 'Detva'),
('026 01', 'Dolný Kubín'),
('027 55', 'Dolný Kubín'),
('027 41', 'Dolný Kubín'),
('027 53', 'Dolný Kubín'),
('027 51', 'Dolný Kubín'),
('027 54', 'Dolný Kubín'),
('027 05', 'Dolný Kubín'),
('027 21', 'Dolný Kubín'),
('930 30', 'Dunajská Streda'),
('930 04', 'Dunajská Streda'),
('930 08', 'Dunajská Streda'),
('930 52', 'Dunajská Streda'),
('930 32', 'Dunajská Streda'),
('930 31', 'Dunajská Streda'),
('929 01', 'Dunajská Streda'),
('930 40', 'Dunajská Streda'),
('930 39', 'Dunajská Streda'),
('930 14', 'Dunajská Streda'),
('930 10', 'Dunajská Streda'),
('930 21', 'Dunajská Streda'),
('930 05', 'Dunajská Streda'),
('930 34', 'Dunajská Streda'),
('930 36', 'Dunajská Streda'),
('930 13', 'Dunajská Streda'),
('930 33', 'Dunajská Streda'),
('930 41', 'Dunajská Streda'),
('930 07', 'Dunajská Streda'),
('930 03', 'Dunajská Streda'),
('930 35', 'Dunajská Streda'),
('930 06', 'Dunajská Streda'),
('930 38', 'Dunajská Streda'),
('930 28', 'Dunajská Streda'),
('930 02', 'Dunajská Streda'),
('931 01', 'Dunajská Streda'),
('930 11', 'Dunajská Streda'),
('930 51', 'Dunajská Streda'),
('930 01', 'Dunajská Streda'),
('932 01', 'Dunajská Streda'),
('930 25', 'Dunajská Streda'),
('930 16', 'Dunajská Streda'),
('925 45', 'Galanta'),
('925 06', 'Galanta'),
('925 08', 'Galanta'),
('925 63', 'Galanta'),
('925 02', 'Galanta'),
('925 41', 'Galanta'),
('925 01', 'Galanta'),
('924 01', 'Galanta'),
('925 22', 'Galanta'),
('925 23', 'Galanta'),
('925 92', 'Galanta'),
('925 21', 'Galanta'),
('925 07', 'Galanta'),
('925 53', 'Galanta'),
('925 54', 'Galanta'),
('925 28', 'Galanta'),
('926 01', 'Galanta'),
('925 51', 'Galanta'),
('925 52', 'Galanta'),
('925 04', 'Galanta'),
('925 42', 'Galanta'),
('925 62', 'Galanta'),
('925 32', 'Galanta'),
('925 55', 'Galanta'),
('925 05', 'Galanta'),
('053 33', 'Gelnica'),
('056 01', 'Gelnica'),
('055 63', 'Gelnica'),
('053 51', 'Gelnica'),
('055 61', 'Gelnica'),
('055 52', 'Gelnica'),
('055 01', 'Gelnica'),
('055 64', 'Gelnica'),
('055 62', 'Gelnica'),
('055 65', 'Gelnica'),
('055 66', 'Gelnica'),
('053 34', 'Gelnica'),
('055 51', 'Gelnica'),
('055 71', 'Gelnica'),
('920 55', 'Hlohovec'),
('920 42', 'Hlohovec'),
('920 61', 'Hlohovec'),
('920 52', 'Hlohovec'),
('920 56', 'Hlohovec'),
('920 62', 'Hlohovec'),
('920 66', 'Hlohovec'),
('922 31', 'Hlohovec'),
('920 64', 'Hlohovec'),
('920 01', 'Hlohovec'),
('920 41', 'Hlohovec'),
('922 42', 'Hlohovec'),
('920 63', 'Hlohovec'),
('920 65', 'Hlohovec'),
('919 33', 'Hlohovec'),
('067 32', 'Humenné'),
('067 23', 'Humenné'),
('066 01', 'Humenné'),
('067 12', 'Humenné'),
('067 22', 'Humenné'),
('067 83', 'Humenné'),
('067 01', 'Humenné'),
('067 45', 'Humenné'),
('067 41', 'Humenné'),
('067 13', 'Humenné'),
('067 24', 'Humenné'),
('094 06', 'Humenné'),
('067 11', 'Humenné'),
('067 82', 'Humenné'),
('067 33', 'Humenné'),
('067 34', 'Humenné'),
('094 07', 'Humenné'),
('094 08', 'Humenné'),
('067 31', 'Humenné'),
('018 52', 'Ilava'),
('018 53', 'Ilava'),
('018 56', 'Ilava'),
('018 41', 'Ilava'),
('018 35', 'Ilava'),
('019 01', 'Ilava'),
('018 54', 'Ilava'),
('018 64', 'Ilava'),
('018 31', 'Ilava'),
('018 63', 'Ilava'),
('018 57', 'Ilava'),
('018 51', 'Ilava'),
('018 55', 'Ilava'),
('018 32', 'Ilava'),
('059 72', 'Kežmarok'),
('059 93', 'Kežmarok'),
('059 06', 'Kežmarok'),
('061 01', 'Kežmarok'),
('059 94', 'Kežmarok'),
('059 71', 'Kežmarok'),
('059 92', 'Kežmarok'),
('059 56', 'Kežmarok'),
('059 04', 'Kežmarok'),
('060 01', 'Kežmarok'),
('059 01', 'Kežmarok'),
('059 07', 'Kežmarok'),
('059 78', 'Kežmarok'),
('059 76', 'Kežmarok'),
('059 79', 'Kežmarok'),
('059 02', 'Kežmarok'),
('059 52', 'Kežmarok'),
('059 95', 'Kežmarok'),
('059 73', 'Kežmarok'),
('946 54', 'Komárno'),
('946 34', 'Komárno'),
('946 16', 'Komárno'),
('946 14', 'Komárno'),
('946 17', 'Komárno'),
('946 35', 'Komárno'),
('946 02', 'Komárno'),
('946 19', 'Komárno'),
('946 03', 'Komárno'),
('946 56', 'Komárno'),
('946 31', 'Komárno'),
('946 52', 'Komárno'),
('946 39', 'Komárno'),
('946 01', 'Komárno'),
('946 36', 'Komárno'),
('946 32', 'Komárno'),
('947 01', 'Komárno'),
('946 37', 'Komárno'),
('946 33', 'Komárno'),
('946 51', 'Komárno'),
('946 13', 'Komárno'),
('946 55', 'Komárno'),
('946 38', 'Komárno'),
('946 57', 'Komárno'),
('946 15', 'Komárno'),
('946 21', 'Komárno'),
('945 01', 'Komárno'),
('946 12', 'Komárno'),
('044 45', 'Košice - okolie'),
('044 25', 'Košice - okolie'),
('040 16', 'Košice - okolie'),
('044 58', 'Košice - okolie'),
('044 42', 'Košice - okolie'),
('044 13', 'Košice - okolie'),
('044 16', 'Košice - okolie'),
('044 57', 'Košice - okolie'),
('044 47', 'Košice - okolie'),
('044 43', 'Košice - okolie'),
('045 01', 'Košice - okolie'),
('044 20', 'Košice - okolie'),
('044 73', 'Košice - okolie'),
('044 41', 'Košice - okolie'),
('044 71', 'Košice - okolie'),
('044 14', 'Košice - okolie'),
('044 01', 'Košice - okolie'),
('044 31', 'Košice - okolie'),
('044 19', 'Košice - okolie'),
('044 02', 'Košice - okolie'),
('044 10', 'Košice - okolie'),
('044 55', 'Košice - okolie'),
('044 21', 'Košice - okolie'),
('044 12', 'Košice - okolie'),
('044 44', 'Košice - okolie'),
('044 74', 'Košice - okolie'),
('044 05', 'Košice - okolie'),
('044 23', 'Košice - okolie'),
('044 18', 'Košice - okolie'),
('044 65', 'Košice - okolie'),
('044 81', 'Košice - okolie'),
('040 15', 'Košice - okolie'),
('040 18', 'Košice - okolie'),
('044 15', 'Košice - okolie'),
('044 17', 'Košice - okolie'),
('044 24', 'Košice - okolie'),
('044 11', 'Košice - okolie'),
('044 26', 'Košice - okolie'),
('044 61', 'Košice - okolie'),
('962 41', 'Krupina'),
('962 52', 'Krupina'),
('962 51', 'Krupina'),
('962 65', 'Krupina'),
('962 68', 'Krupina'),
('962 71', 'Krupina'),
('962 43', 'Krupina'),
('963 01', 'Krupina'),
('962 44', 'Krupina'),
('962 55', 'Krupina'),
('962 66', 'Krupina'),
('023 45', 'Kysucké Nové Mesto'),
('023 36', 'Kysucké Nové Mesto'),
('023 32', 'Kysucké Nové Mesto'),
('023 34', 'Kysucké Nové Mesto'),
('023 41', 'Kysucké Nové Mesto'),
('023 35', 'Kysucké Nové Mesto'),
('023 33', 'Kysucké Nové Mesto'),
('023 31', 'Kysucké Nové Mesto'),
('935 51', 'Levice'),
('935 03', 'Levice'),
('935 36', 'Levice'),
('935 74', 'Levice'),
('935 05', 'Levice'),
('935 87', 'Levice'),
('935 02', 'Levice'),
('935 24', 'Levice'),
('935 68', 'Levice'),
('935 63', 'Levice'),
('935 85', 'Levice'),
('935 04', 'Levice'),
('935 31', 'Levice'),
('935 37', 'Levice'),
('935 66', 'Levice'),
('935 84', 'Levice'),
('935 55', 'Levice'),
('935 86', 'Levice'),
('935 81', 'Levice'),
('936 01', 'Levice'),
('935 61', 'Levice'),
('935 27', 'Levice'),
('935 35', 'Levice'),
('935 82', 'Levice'),
('935 75', 'Levice'),
('935 06', 'Levice'),
('935 57', 'Levice'),
('935 32', 'Levice'),
('935 64', 'Levice'),
('935 22', 'Levice'),
('934 01', 'Levice'),
('937 01', 'Levice'),
('935 38', 'Levice'),
('935 67', 'Levice'),
('935 41', 'Levice'),
('935 21', 'Levice'),
('935 39', 'Levice'),
('935 56', 'Levice'),
('935 25', 'Levice'),
('935 33', 'Levice'),
('935 69', 'Levice'),
('935 62', 'Levice'),
('935 23', 'Levice'),
('935 26', 'Levice'),
('935 71', 'Levice'),
('935 52', 'Levice'),
('935 65', 'Levice'),
('935 34', 'Levice'),
('935 77', 'Levice'),
('032 04', 'Liptovský Mikuláš'),
('032 21', 'Liptovský Mikuláš'),
('031 05', 'Liptovský Mikuláš'),
('032 23', 'Liptovský Mikuláš'),
('031 01', 'Liptovský Mikuláš'),
('032 12', 'Liptovský Mikuláš'),
('032 11', 'Liptovský Mikuláš'),
('032 14', 'Liptovský Mikuláš'),
('027 32', 'Liptovský Mikuláš'),
('032 31', 'Liptovský Mikuláš'),
('033 01', 'Liptovský Mikuláš'),
('032 33', 'Liptovský Mikuláš'),
('032 44', 'Liptovský Mikuláš'),
('032 03', 'Liptovský Mikuláš'),
('032 15', 'Liptovský Mikuláš'),
('032 34', 'Liptovský Mikuláš'),
('032 42', 'Liptovský Mikuláš'),
('032 05', 'Liptovský Mikuláš'),
('032 61', 'Liptovský Mikuláš'),
('031 04', 'Liptovský Mikuláš'),
('032 13', 'Liptovský Mikuláš'),
('032 32', 'Liptovský Mikuláš'),
('032 02', 'Liptovský Mikuláš'),
('900 32', 'Malacky'),
('900 61', 'Malacky'),
('900 54', 'Malacky'),
('900 63', 'Malacky'),
('900 62', 'Malacky'),
('900 52', 'Malacky'),
('900 67', 'Malacky'),
('900 55', 'Malacky'),
('901 01', 'Malacky'),
('908 74', 'Malacky'),
('900 33', 'Malacky'),
('900 53', 'Malacky'),
('906 36', 'Malacky'),
('906 35', 'Malacky'),
('900 68', 'Malacky'),
('906 38', 'Malacky'),
('906 37', 'Malacky'),
('908 75', 'Malacky'),
('900 31', 'Malacky'),
('900 64', 'Malacky'),
('908 73', 'Malacky'),
('900 66', 'Malacky'),
('900 65', 'Malacky'),
('908 72', 'Malacky'),
('900 51', 'Malacky'),
('038 11', 'Martin'),
('038 42', 'Martin'),
('038 15', 'Martin'),
('038 04', 'Martin'),
('038 02', 'Martin'),
('038 43', 'Martin'),
('038 41', 'Martin'),
('038 54', 'Martin'),
('038 61', 'Martin'),
('038 12', 'Martin'),
('038 52', 'Martin'),
('038 03', 'Martin'),
('038 53', 'Martin'),
('038 51', 'Martin'),
('038 35', 'Martin'),
('038 31', 'Martin'),
('038 40', 'Martin'),
('067 16', 'Medzilaborce'),
('067 02', 'Medzilaborce'),
('067 52', 'Medzilaborce'),
('068 01', 'Medzilaborce'),
('067 04', 'Medzilaborce'),
('072 54', 'Michalovce'),
('076 72', 'Michalovce'),
('072 05', 'Michalovce'),
('076 77', 'Michalovce'),
('072 11', 'Michalovce'),
('076 71', 'Michalovce'),
('079 01', 'Michalovce'),
('076 74', 'Michalovce'),
('072 15', 'Michalovce'),
('072 16', 'Michalovce'),
('072 34', 'Michalovce'),
('072 33', 'Michalovce'),
('072 02', 'Michalovce'),
('072 32', 'Michalovce'),
('072 36', 'Michalovce'),
('072 31', 'Michalovce'),
('072 01', 'Michalovce'),
('072 37', 'Michalovce'),
('071 01', 'Michalovce'),
('072 06', 'Michalovce'),
('072 17', 'Michalovce'),
('072 03', 'Michalovce'),
('076 75', 'Michalovce'),
('072 23', 'Michalovce'),
('072 13', 'Michalovce'),
('072 14', 'Michalovce'),
('072 22', 'Michalovce'),
('072 04', 'Michalovce'),
('072 21', 'Michalovce'),
('906 13', 'Myjava'),
('906 14', 'Myjava'),
('916 14', 'Myjava'),
('906 06', 'Myjava'),
('906 21', 'Myjava'),
('916 13', 'Myjava'),
('906 15', 'Myjava'),
('916 16', 'Myjava'),
('907 01', 'Myjava'),
('906 22', 'Myjava'),
('906 23', 'Myjava'),
('029 52', 'Námestovo'),
('029 63', 'Námestovo'),
('029 42', 'Námestovo'),
('029 53', 'Námestovo'),
('029 41', 'Námestovo'),
('029 54', 'Námestovo'),
('029 51', 'Námestovo'),
('029 01', 'Námestovo'),
('029 55', 'Námestovo'),
('029 64', 'Námestovo'),
('029 57', 'Námestovo'),
('029 47', 'Námestovo'),
('029 62', 'Námestovo'),
('029 44', 'Námestovo'),
('029 45', 'Námestovo'),
('029 46', 'Námestovo'),
('029 56', 'Námestovo'),
('029 43', 'Námestovo'),
('951 22', 'Nitra'),
('951 34', 'Nitra'),
('951 53', 'Nitra'),
('951 46', 'Nitra'),
('951 13', 'Nitra'),
('951 17', 'Nitra'),
('951 24', 'Nitra'),
('951 43', 'Nitra'),
('951 07', 'Nitra'),
('951 03', 'Nitra'),
('951 61', 'Nitra'),
('951 45', 'Nitra'),
('951 02', 'Nitra'),
('951 06', 'Nitra'),
('951 08', 'Nitra'),
('951 25', 'Nitra'),
('951 12', 'Nitra'),
('951 48', 'Nitra'),
('951 73', 'Nitra'),
('951 78', 'Nitra'),
('951 36', 'Nitra'),
('951 88', 'Nitra'),
('951 44', 'Nitra'),
('951 23', 'Nitra'),
('951 41', 'Nitra'),
('951 54', 'Nitra'),
('951 04', 'Nitra'),
('952 01', 'Nitra'),
('951 15', 'Nitra'),
('951 01', 'Nitra'),
('951 51', 'Nitra'),
('951 05', 'Nitra'),
('951 21', 'Nitra'),
('951 37', 'Nitra'),
('951 16', 'Nitra'),
('951 26', 'Nitra'),
('951 35', 'Nitra'),
('951 42', 'Nitra'),
('951 74', 'Nitra'),
('916 31', 'Nové Mesto n.Váhom'),
('913 07', 'Nové Mesto n.Váhom'),
('916 42', 'Nové Mesto n.Váhom'),
('916 25', 'Nové Mesto n.Váhom'),
('916 11', 'Nové Mesto n.Váhom'),
('916 21', 'Nové Mesto n.Váhom'),
('916 27', 'Nové Mesto n.Váhom'),
('916 01', 'Nové Mesto n.Váhom'),
('916 41', 'Nové Mesto n.Váhom'),
('916 32', 'Nové Mesto n.Váhom'),
('916 33', 'Nové Mesto n.Váhom'),
('916 12', 'Nové Mesto n.Váhom'),
('916 37', 'Nové Mesto n.Váhom'),
('916 26', 'Nové Mesto n.Váhom'),
('916 35', 'Nové Mesto n.Váhom'),
('913 08', 'Nové Mesto n.Váhom'),
('915 01', 'Nové Mesto n.Váhom'),
('916 22', 'Nové Mesto n.Váhom'),
('916 23', 'Nové Mesto n.Váhom'),
('940 02', 'Nové Zámky'),
('941 01', 'Nové Zámky'),
('941 02', 'Nové Zámky'),
('941 03', 'Nové Zámky'),
('941 04', 'Nové Zámky'),
('941 05', 'Nové Zámky'),
('941 06', 'Nové Zámky'),
('941 07', 'Nové Zámky'),
('941 10', 'Nové Zámky'),
('941 11', 'Nové Zámky'),
('941 21', 'Nové Zámky'),
('941 22', 'Nové Zámky'),
('941 23', 'Nové Zámky'),
('941 31', 'Nové Zámky'),
('941 32', 'Nové Zámky'),
('941 33', 'Nové Zámky'),
('941 34', 'Nové Zámky'),
('941 35', 'Nové Zámky'),
('941 36', 'Nové Zámky'),
('941 37', 'Nové Zámky'),
('941 41', 'Nové Zámky'),
('941 42', 'Nové Zámky'),
('941 43', 'Nové Zámky'),
('941 44', 'Nové Zámky'),
('941 45', 'Nové Zámky'),
('941 46', 'Nové Zámky'),
('941 47', 'Nové Zámky'),
('941 48', 'Nové Zámky'),
('941 49', 'Nové Zámky'),
('941 50', 'Nové Zámky'),
('941 51', 'Nové Zámky'),
('941 62', 'Nové Zámky'),
('942 01', 'Nové Zámky'),
('943 01', 'Nové Zámky'),
('943 04', 'Nové Zámky'),
('943 42', 'Nové Zámky'),
('943 52', 'Nové Zámky'),
('943 53', 'Nové Zámky'),
('943 54', 'Nové Zámky'),
('943 55', 'Nové Zámky'),
('943 56', 'Nové Zámky'),
('943 57', 'Nové Zámky'),
('943 58', 'Nové Zámky'),
('943 59', 'Nové Zámky'),
('943 60', 'Nové Zámky'),
('943 61', 'Nové Zámky'),
('943 65', 'Nové Zámky'),
('956 18', 'Partizánske'),
('956 32', 'Partizánske'),
('956 33', 'Partizánske'),
('956 34', 'Partizánske'),
('958 03', 'Partizánske'),
('958 04', 'Partizánske'),
('958 41', 'Partizánske'),
('958 42', 'Partizánske'),
('958 43', 'Partizánske'),
('958 44', 'Partizánske'),
('958 45', 'Partizánske'),
('958 52', 'Partizánske'),
('958 53', 'Partizánske'),
('958 54', 'Partizánske'),
('900 01', 'Pezinok'),
('900 21', 'Pezinok'),
('900 23', 'Pezinok'),
('900 26', 'Pezinok'),
('900 81', 'Pezinok'),
('900 84', 'Pezinok'),
('900 85', 'Pezinok'),
('900 86', 'Pezinok'),
('900 88', 'Pezinok'),
('900 89', 'Pezinok'),
('900 90', 'Pezinok'),
('900 91', 'Pezinok'),
('902 01', 'Pezinok'),
('980 12', 'Poltár'),
('980 13', 'Poltár'),
('985 01', 'Poltár'),
('985 02', 'Poltár'),
('985 03', 'Poltár'),
('985 06', 'Poltár'),
('985 07', 'Poltár'),
('985 22', 'Poltár'),
('985 24', 'Poltár'),
('985 25', 'Poltár'),
('985 26', 'Poltár'),
('985 42', 'Poltár'),
('987 01', 'Poltár'),
('058 01', 'Poprad'),
('059 11', 'Poprad'),
('059 12', 'Poprad'),
('059 13', 'Poprad'),
('059 14', 'Poprad'),
('059 16', 'Poprad'),
('059 17', 'Poprad'),
('059 18', 'Poprad'),
('059 19', 'Poprad'),
('059 21', 'Poprad'),
('059 31', 'Poprad'),
('059 34', 'Poprad'),
('059 35', 'Poprad'),
('059 36', 'Poprad'),
('059 37', 'Poprad'),
('059 39', 'Poprad'),
('059 40', 'Poprad'),
('059 41', 'Poprad'),
('059 42', 'Poprad'),
('059 54', 'Poprad'),
('059 55', 'Poprad'),
('059 60', 'Poprad'),
('059 81', 'Poprad'),
('059 83', 'Poprad'),
('059 84', 'Poprad'),
('059 85', 'Poprad'),
('059 86', 'Poprad'),
('059 91', 'Poprad'),
('062 01', 'Poprad'),
('017 01', 'Považská Bystrica'),
('017 05', 'Považská Bystrica'),
('018 01', 'Považská Bystrica'),
('018 02', 'Považská Bystrica'),
('018 03', 'Považská Bystrica'),
('018 12', 'Považská Bystrica'),
('018 13', 'Považská Bystrica'),
('018 15', 'Považská Bystrica'),
('018 16', 'Považská Bystrica'),
('018 17', 'Považská Bystrica'),
('018 21', 'Považská Bystrica'),
('018 22', 'Považská Bystrica'),
('018 26', 'Považská Bystrica'),
('080 01', 'Prešov'),
('080 05', 'Prešov'),
('080 06', 'Prešov'),
('082 01', 'Prešov'),
('082 03', 'Prešov'),
('082 04', 'Prešov'),
('082 05', 'Prešov'),
('082 06', 'Prešov'),
('082 07', 'Prešov'),
('082 12', 'Prešov'),
('082 13', 'Prešov'),
('082 14', 'Prešov'),
('082 15', 'Prešov'),
('082 16', 'Prešov'),
('082 21', 'Prešov'),
('082 32', 'Prešov'),
('082 33', 'Prešov'),
('082 35', 'Prešov'),
('082 36', 'Prešov'),
('082 37', 'Prešov'),
('082 38', 'Prešov'),
('082 41', 'Prešov'),
('082 42', 'Prešov'),
('082 43', 'Prešov'),
('082 44', 'Prešov'),
('082 52', 'Prešov'),
('082 53', 'Prešov'),
('082 66', 'Prešov'),
('082 67', 'Prešov'),
('971 01', 'Prievidza'),
('972 01', 'Prievidza'),
('972 02', 'Prievidza'),
('972 05', 'Prievidza'),
('972 11', 'Prievidza'),
('972 12', 'Prievidza'),
('972 13', 'Prievidza'),
('972 14', 'Prievidza'),
('972 15', 'Prievidza'),
('972 16', 'Prievidza'),
('972 17', 'Prievidza'),
('972 21', 'Prievidza'),
('972 22', 'Prievidza'),
('972 23', 'Prievidza'),
('972 24', 'Prievidza'),
('972 25', 'Prievidza'),
('972 26', 'Prievidza'),
('972 27', 'Prievidza'),
('972 28', 'Prievidza'),
('972 29', 'Prievidza'),
('972 31', 'Prievidza'),
('972 32', 'Prievidza'),
('972 41', 'Prievidza'),
('972 42', 'Prievidza'),
('972 43', 'Prievidza'),
('972 44', 'Prievidza'),
('972 45', 'Prievidza'),
('972 46', 'Prievidza'),
('972 47', 'Prievidza'),
('972 48', 'Prievidza'),
('972 51', 'Prievidza'),
('972 71', 'Prievidza'),
('018 61', 'Púchov'),
('020 01', 'Púchov'),
('020 51', 'Púchov'),
('020 52', 'Púchov'),
('020 53', 'Púchov'),
('020 54', 'Púchov'),
('020 55', 'Púchov'),
('020 61', 'Púchov'),
('020 62', 'Púchov'),
('020 63', 'Púchov'),
('020 64', 'Púchov'),
('020 71', 'Púchov'),
('020 72', 'Púchov'),
('049 01', 'Revúca'),
('049 13', 'Revúca'),
('049 14', 'Revúca'),
('049 16', 'Revúca'),
('049 18', 'Revúca'),
('049 61', 'Revúca'),
('049 62', 'Revúca'),
('049 64', 'Revúca'),
('050 01', 'Revúca'),
('982 01', 'Revúca'),
('982 52', 'Revúca'),
('982 62', 'Revúca'),
('982 65', 'Revúca'),
('982 66', 'Revúca'),
('979 01', 'Rimavská Sobota'),
('980 01', 'Rimavská Sobota'),
('980 02', 'Rimavská Sobota'),
('980 03', 'Rimavská Sobota'),
('980 04', 'Rimavská Sobota'),
('980 21', 'Rimavská Sobota'),
('980 22', 'Rimavská Sobota'),
('980 23', 'Rimavská Sobota'),
('980 25', 'Rimavská Sobota'),
('980 26', 'Rimavská Sobota'),
('980 31', 'Rimavská Sobota'),
('980 32', 'Rimavská Sobota'),
('980 33', 'Rimavská Sobota'),
('980 34', 'Rimavská Sobota'),
('980 35', 'Rimavská Sobota'),
('980 41', 'Rimavská Sobota'),
('980 42', 'Rimavská Sobota'),
('980 43', 'Rimavská Sobota'),
('980 44', 'Rimavská Sobota'),
('980 45', 'Rimavská Sobota'),
('980 50', 'Rimavská Sobota'),
('980 51', 'Rimavská Sobota'),
('980 52', 'Rimavská Sobota'),
('980 53', 'Rimavská Sobota'),
('980 54', 'Rimavská Sobota'),
('980 55', 'Rimavská Sobota'),
('980 61', 'Rimavská Sobota'),
('981 01', 'Rimavská Sobota'),
('982 51', 'Rimavská Sobota'),
('982 67', 'Rimavská Sobota'),
('034 01', 'Ružomberok'),
('034 71', 'Ružomberok'),
('034 72', 'Ružomberok'),
('034 73', 'Ružomberok'),
('034 74', 'Ružomberok'),
('034 81', 'Ružomberok'),
('034 82', 'Ružomberok'),
('034 83', 'Ružomberok'),
('034 84', 'Ružomberok'),
('034 91', 'Ružomberok'),
('034 92', 'Ružomberok'),
('034 95', 'Ružomberok'),
('034 96', 'Ružomberok'),
('082 22', 'Sabinov'),
('082 56', 'Sabinov'),
('082 57', 'Sabinov'),
('082 61', 'Sabinov'),
('082 63', 'Sabinov'),
('082 71', 'Sabinov'),
('082 73', 'Sabinov'),
('082 74', 'Sabinov'),
('082 75', 'Sabinov'),
('082 76', 'Sabinov'),
('083 01', 'Sabinov'),
('900 24', 'Senec'),
('900 25', 'Senec'),
('900 27', 'Senec'),
('900 28', 'Senec'),
('900 29', 'Senec'),
('900 41', 'Senec'),
('900 42', 'Senec'),
('900 43', 'Senec'),
('900 44', 'Senec'),
('900 45', 'Senec'),
('900 46', 'Senec'),
('900 50', 'Senec'),
('900 82', 'Senec'),
('900 83', 'Senec'),
('903 01', 'Senec'),
('925 26', 'Senec'),
('905 01', 'Senica'),
('906 02', 'Senica'),
('906 03', 'Senica'),
('906 04', 'Senica'),
('906 05', 'Senica'),
('906 07', 'Senica'),
('906 11', 'Senica'),
('906 12', 'Senica'),
('906 31', 'Senica'),
('906 32', 'Senica'),
('906 33', 'Senica'),
('906 34', 'Senica'),
('906 45', 'Senica'),
('908 01', 'Senica'),
('908 41', 'Senica'),
('908 42', 'Senica'),
('908 43', 'Senica'),
('908 71', 'Senica'),
('908 76', 'Senica'),
('908 77', 'Senica'),
('908 78', 'Senica'),
('908 79', 'Senica'),
('908 80', 'Senica'),
('908 44', 'Skalica'),
('908 45', 'Skalica'),
('908 46', 'Skalica'),
('908 47', 'Skalica'),
('908 48', 'Skalica'),
('908 49', 'Skalica'),
('908 51', 'Skalica'),
('908 61', 'Skalica'),
('908 62', 'Skalica'),
('908 63', 'Skalica'),
('908 64', 'Skalica'),
('908 65', 'Skalica'),
('908 85', 'Skalica'),
('909 01', 'Skalica'),
('067 35', 'Snina'),
('067 61', 'Snina'),
('067 65', 'Snina'),
('067 66', 'Snina'),
('067 67', 'Snina'),
('067 68', 'Snina'),
('067 72', 'Snina'),
('067 73', 'Snina'),
('067 77', 'Snina'),
('067 81', 'Snina'),
('069 01', 'Snina'),
('072 41', 'Sobrance'),
('072 42', 'Sobrance'),
('072 43', 'Sobrance'),
('072 44', 'Sobrance'),
('072 51', 'Sobrance'),
('072 52', 'Sobrance'),
('072 53', 'Sobrance'),
('072 55', 'Sobrance'),
('072 61', 'Sobrance'),
('072 62', 'Sobrance'),
('072 63', 'Sobrance'),
('072 64', 'Sobrance'),
('073 01', 'Sobrance'),
('052 01', 'Spišská Nová Ves'),
('053 01', 'Spišská Nová Ves'),
('053 11', 'Spišská Nová Ves'),
('053 13', 'Spišská Nová Ves'),
('053 15', 'Spišská Nová Ves'),
('053 21', 'Spišská Nová Ves'),
('053 22', 'Spišská Nová Ves'),
('053 23', 'Spišská Nová Ves'),
('053 31', 'Spišská Nová Ves'),
('053 32', 'Spišská Nová Ves'),
('053 40', 'Spišská Nová Ves'),
('053 42', 'Spišská Nová Ves'),
('053 61', 'Spišská Nová Ves'),
('053 62', 'Spišská Nová Ves'),
('053 63', 'Spišská Nová Ves'),
('053 75', 'Spišská Nová Ves'),
('053 76', 'Spišská Nová Ves'),
('090 21', 'Stropkov'),
('090 22', 'Stropkov'),
('090 23', 'Stropkov'),
('090 24', 'Stropkov'),
('090 31', 'Stropkov'),
('090 32', 'Stropkov'),
('090 33', 'Stropkov'),
('090 34', 'Stropkov'),
('091 01', 'Stropkov'),
('086 44', 'Svidník'),
('089 01', 'Svidník'),
('090 01', 'Svidník'),
('090 02', 'Svidník'),
('090 03', 'Svidník'),
('090 05', 'Svidník'),
('090 11', 'Svidník'),
('090 16', 'Svidník'),
('090 41', 'Svidník'),
('090 42', 'Svidník'),
('075 01', 'Trebišov'),
('076 01', 'Trebišov'),
('076 02', 'Trebišov'),
('076 03', 'Trebišov'),
('076 05', 'Trebišov'),
('076 12', 'Trebišov'),
('076 13', 'Trebišov'),
('076 14', 'Trebišov'),
('076 15', 'Trebišov'),
('076 16', 'Trebišov'),
('076 17', 'Trebišov'),
('076 22', 'Trebišov'),
('076 31', 'Trebišov'),
('076 32', 'Trebišov'),
('076 33', 'Trebišov'),
('076 34', 'Trebišov'),
('076 35', 'Trebišov'),
('076 36', 'Trebišov'),
('076 37', 'Trebišov'),
('076 41', 'Trebišov'),
('076 42', 'Trebišov'),
('076 43', 'Trebišov'),
('076 51', 'Trebišov'),
('076 52', 'Trebišov'),
('076 53', 'Trebišov'),
('076 61', 'Trebišov'),
('076 62', 'Trebišov'),
('076 81', 'Trebišov'),
('076 82', 'Trebišov'),
('076 83', 'Trebišov'),
('076 84', 'Trebišov'),
('077 01', 'Trebišov'),
('078 01', 'Trebišov'),
('917 05', 'Trnava'),
('919 01', 'Trnava'),
('919 02', 'Trnava'),
('919 03', 'Trnava'),
('919 04', 'Trnava'),
('919 05', 'Trnava'),
('919 07', 'Trnava'),
('919 08', 'Trnava'),
('919 09', 'Trnava'),
('919 10', 'Trnava'),
('919 21', 'Trnava'),
('919 22', 'Trnava'),
('919 23', 'Trnava'),
('919 24', 'Trnava'),
('919 25', 'Trnava'),
('919 27', 'Trnava'),
('919 28', 'Trnava'),
('919 29', 'Trnava'),
('919 30', 'Trnava'),
('919 32', 'Trnava'),
('919 34', 'Trnava'),
('919 35', 'Trnava'),
('919 42', 'Trnava'),
('919 43', 'Trnava'),
('919 51', 'Trnava'),
('919 52', 'Trnava'),
('919 53', 'Trnava'),
('919 54', 'Trnava'),
('919 55', 'Trnava'),
('919 61', 'Trnava'),
('919 65', 'Trnava'),
('027 12', 'Tvrdošín'),
('027 13', 'Tvrdošín'),
('027 42', 'Tvrdošín'),
('027 43', 'Tvrdošín'),
('027 44', 'Tvrdošín'),
('028 01', 'Tvrdošín'),
('951 52', 'Zlaté Moravce'),
('951 62', 'Zlaté Moravce'),
('951 71', 'Zlaté Moravce'),
('951 72', 'Zlaté Moravce'),
('951 75', 'Zlaté Moravce'),
('951 76', 'Zlaté Moravce'),
('951 77', 'Zlaté Moravce'),
('951 81', 'Zlaté Moravce'),
('951 82', 'Zlaté Moravce'),
('951 85', 'Zlaté Moravce'),
('951 87', 'Zlaté Moravce'),
('951 91', 'Zlaté Moravce'),
('951 92', 'Zlaté Moravce'),
('951 93', 'Zlaté Moravce'),
('951 94', 'Zlaté Moravce'),
('951 95', 'Zlaté Moravce'),
('951 96', 'Zlaté Moravce'),
('953 01', 'Zlaté Moravce'),
('953 05', 'Zlaté Moravce'),
('966 54', 'Zlaté Moravce'),
('962 01', 'Zvolen'),
('962 31', 'Zvolen'),
('962 33', 'Zvolen'),
('962 34', 'Zvolen'),
('962 37', 'Zvolen'),
('962 61', 'Zvolen'),
('962 62', 'Zvolen'),
('962 63', 'Zvolen'),
('966 11', 'Zvolen'),
('966 41', 'Žarnovica'),
('966 42', 'Žarnovica'),
('966 51', 'Žarnovica'),
('966 52', 'Žarnovica'),
('966 53', 'Žarnovica'),
('966 71', 'Žarnovica'),
('966 74', 'Žarnovica'),
('966 77', 'Žarnovica'),
('966 78', 'Žarnovica'),
('966 81', 'Žarnovica'),
('968 01', 'Žarnovica'),
('965 01', 'Žiar nad Hronom'),
('966 01', 'Žiar nad Hronom'),
('966 02', 'Žiar nad Hronom'),
('966 03', 'Žiar nad Hronom'),
('966 04', 'Žiar nad Hronom'),
('966 21', 'Žiar nad Hronom'),
('966 22', 'Žiar nad Hronom'),
('966 23', 'Žiar nad Hronom'),
('966 24', 'Žiar nad Hronom'),
('967 01', 'Žiar nad Hronom'),
('010 01', 'Žilina'),
('010 04', 'Žilina'),
('013 01', 'Žilina'),
('013 02', 'Žilina'),
('013 03', 'Žilina'),
('013 04', 'Žilina'),
('013 05', 'Žilina'),
('013 06', 'Žilina'),
('013 11', 'Žilina'),
('013 12', 'Žilina'),
('013 13', 'Žilina'),
('013 14', 'Žilina'),
('013 15', 'Žilina'),
('013 18', 'Žilina'),
('013 19', 'Žilina'),
('013 22', 'Žilina'),
('013 23', 'Žilina'),
('013 24', 'Žilina'),
('013 25', 'Žilina'),
('013 31', 'Žilina'),
('013 32', 'Žilina'),
('013 41', 'Žilina'),
('013 42', 'Žilina'),
('015 01', 'Žilina');

-- --------------------------------------------------------

--
-- Table structure for table `inzerat`
--

CREATE TABLE `inzerat` (
  `idProduktu` int(11) NOT NULL,
  `pohlavie` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Nazov` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Popis` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Meno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Tel_c` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Heslo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Datum_pridania` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `Cena` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `idKategorie` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `PSC` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `obrazok` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_slovak_ci;

--
-- Dumping data for table `inzerat`
--

INSERT INTO `inzerat` (`idProduktu`, `pohlavie`, `Nazov`, `Popis`, `Meno`, `Email`, `Tel_c`, `Heslo`, `Datum_pridania`, `Cena`, `idKategorie`, `PSC`, `obrazok`) VALUES
(42, 'Zena', 'Ruzove saty', 'Ruzove saty, raz oblecene, ale na cene sa vieme dohodnut', 'Lenka', 'lenka.j@azet.sk', '0950654321', '123', '14/12/2020', '32', '5', '94106', 0x70696e6b5f64726573732e4a5047),
(41, 'Muz', 'Hnede topanky', 'Hnede topanky, neznama znacka, v pohode stav', 'Jaroslav', 'jrej@zoznam.sk', '0908885456', '2', '14/12/2020', '20', '7', '94022', 0x73686f65735f62726f776e2e4a5047),
(40, 'Muz', 'Timberland topanky', 'Timberland topanky, cislo 42, super kvalita, povodna cena 90e', 'Jozko', 'janokolecko@hotmail.sk', '0907564321', '123', '14/12/2020', '40', '7', '94106', 0x326472657373312e4a5047),
(39, 'Muz', 'Panske tricko biele', 'Panske tricko, biele, prijemna latka, cena dohodou', 'Miro', 'mirko@azet.sk', '0955654214', '123', '14/12/2020', '10', '2', '94022', 0x34542d7368697274312e4a5047),
(36, 'Zena', 'Damska sukna', 'Predam damsku suknu, stav 100%', 'Jozefina', 'jozka@azet.sk', '0950663214', '123', '14/12/2020', '20', '4', '94441', 0x33737765617465722e4a5047),
(37, 'Zena', 'Damska bluzka', 'Predam damsku bluzku bielu, nenosenu, na cene sa da dohodnut', 'Miroslava', 'miroslava.zelena@gmail.com', '0950663214', '152', '14/12/2020', '20', '2', '94106', 0x73686f65735f62726f776e2e4a5047),
(38, 'Zena', 'Nahrdelnik', 'predam nahrdelnik, je trosku zosuchany ale da sa nosit', 'Janka', 'janka@gmail.com', '0912165444', '1', '14/12/2020', '3', '8', '94022', 0x346e65636b6c6563652e4a5047);

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `idKategorie` int(11) NOT NULL,
  `Nazov_kategorie` varchar(40) CHARACTER SET utf8 COLLATE utf8_slovak_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_slovak_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`idKategorie`, `Nazov_kategorie`) VALUES
(1, 'Mikiny'),
(2, 'Tricka'),
(3, 'Bundy'),
(4, 'Sukne'),
(5, 'Šaty'),
(6, 'Nohavice'),
(7, 'Topánky'),
(8, 'Doplnky'),
(9, 'Čiapky'),
(10, 'Iné');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`PSC`);

--
-- Indexes for table `inzerat`
--
ALTER TABLE `inzerat`
  ADD PRIMARY KEY (`idProduktu`),
  ADD KEY `idKategorie` (`idKategorie`),
  ADD KEY `PSC` (`PSC`),
  ADD KEY `idObrazky` (`obrazok`(1000));

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`idKategorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inzerat`
--
ALTER TABLE `inzerat`
  MODIFY `idProduktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `idKategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
