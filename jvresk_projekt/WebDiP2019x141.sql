-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 11:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdip2019x141`
--

-- --------------------------------------------------------

--
-- Table structure for table `biciklijada`
--

CREATE TABLE `biciklijada` (
  `Biciklijada_id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `datum_pocetka` date NOT NULL,
  `datum_zavrsetka` date NOT NULL,
  `Organizator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `biciklijada`
--

INSERT INTO `biciklijada` (`Biciklijada_id`, `naziv`, `datum_pocetka`, `datum_zavrsetka`, `Organizator`) VALUES
(1, 'Ljetna biciklijada', '2020-06-01', '2020-06-06', 1),
(2, 'Zimska biciklijada', '2020-12-01', '2020-12-05', 1),
(3, 'Biciklijada 2020', '2020-04-12', '2020-04-18', 1),
(4, 'Jesenska Biciklijada', '2020-09-01', '2020-09-05', 1),
(5, 'Morska biciklijada', '2020-07-01', '2020-07-04', 1),
(6, 'Proljetna biciklijada', '2020-03-01', '2020-03-07', 1),
(7, 'Svibanjska biciklijada', '2020-05-01', '2020-05-09', 1),
(8, 'Varaždinska biciklijada', '2020-06-14', '2020-06-20', 1),
(9, 'Tour de Zagreb', '2020-10-04', '2020-10-10', 1),
(10, 'Tour de Dubrovnik', '2020-04-26', '2020-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik`
--

CREATE TABLE `dnevnik` (
  `Dnevnik_id` int(11) NOT NULL,
  `radnje` text NOT NULL,
  `upit` text NOT NULL,
  `datum_vrijeme` datetime NOT NULL,
  `Tip_radnje_Tip_radnje_id` int(11) NOT NULL,
  `Korisnik_korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`Dnevnik_id`, `radnje`, `upit`, `datum_vrijeme`, `Tip_radnje_Tip_radnje_id`, `Korisnik_korisnik_id`) VALUES
(1, 'korisnici.html', 'SELECT * FROM korisnici;', '2020-04-30 00:00:00', 3, 1),
(2, 'prijava.html', 'SELECT * FROM prijava;', '2020-04-29 00:00:00', 2, 1),
(3, 'prijava.html', 'SELECT * FROM prijava;', '2020-04-21 00:00:00', 1, 5),
(4, 'lokacija.html', 'SELECT * FROM lokacije;', '2020-04-13 00:00:00', 2, 2),
(5, 'lokacije.html', 'SELECT * FROM lokacije;', '2020-04-19 00:00:00', 2, 7),
(6, 'biciklijade.html', 'SELECT * FROM biciklijade;', '2020-04-22 00:00:00', 2, 3),
(7, 'biciklijade.html', 'SELECT * FROM biciklijade;', '2020-04-16 00:00:00', 2, 10),
(8, 'uplate.html', 'SELECT * FROM uplate;', '2020-04-19 00:00:00', 3, 4),
(9, 'rezultati.html', 'SELECT * FROM rezultat;', '2020-04-15 00:00:00', 2, 9),
(10, 'prijava.html', 'SELECT * FROM prijava;', '2020-04-21 00:00:00', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_id` int(11) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `korisnicko_ime` varchar(45) NOT NULL,
  `email` varchar(30) NOT NULL,
  `lozinka` varchar(45) NOT NULL,
  `lozinka_sha1` char(40) NOT NULL,
  `Registracija` datetime DEFAULT NULL,
  `token` varchar(30) DEFAULT NULL,
  `aktivacija` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `Kolacic` datetime NOT NULL,
  `Tip_korisnika_Tip_korisnika_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `ime`, `prezime`, `korisnicko_ime`, `email`, `lozinka`, `lozinka_sha1`, `Registracija`, `token`, `aktivacija`, `status`, `Kolacic`, `Tip_korisnika_Tip_korisnika_id`) VALUES
(1, 'Josipa', 'Vresk', 'jvresk', 'jvresk@foi.hr', 'admin_3B94', '40616696abb0c3f65a3145992c706aace8cb080b', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-04 00:00:00', 1),
(2, 'Marko', 'Markić', 'mmarkic', 'mmarkic@gmail.com', 'mod_1', '0614281d1efa44fc93d6d9a7cfed8cdb844188b3', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-04 00:00:00', 2),
(3, 'Ivo', 'Ivić', 'iivic', 'iivic@gmail.com', 'bPq4eo1TuyLM1xL5ECm3', '25ede7e252eeaee9dd01c96910eac34e4a4fcf39', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-04 00:00:00', 2),
(4, 'Luka', 'Lukić', 'llukic', 'llukic@foi.hr', 'ejPEmrIc3K1ikTuBeGvw', '84d65536e3fb5bd384a8f8abd08775bbb843b161', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-04 00:00:00', 2),
(5, 'Hrvoje', 'Horvat', 'hhorvat', 'hhorvat@foi.hr', 'reg_1', '1cbedfe42e67dd1105f399574ca9e3fe54daf22e', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-04 00:00:00', 3),
(6, 'Branko', 'Brankić', 'bbrankic', 'bbrankic@foi.hr', 'reg_2', 'b27cfa2bf17097b2a0e8e21e3e60217b82b35e4d', '2020-04-04 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-04 00:00:00', 3),
(7, 'Mate', 'Matić', 'mmatić', 'mmatic@gmail.com', 'hfzZ0N9PQoka8No7RdH4', '170a14156764ed27843fd59f87b7d913045c9f09', '2020-04-01 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-01 00:00:00', 3),
(8, 'Ivan', 'Ivanić', 'iivanic', 'iivanic@foi.hr', 'reg_4', '481306bbae33fecb0dfa5fd78553981eca083a94', '2020-04-02 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-02 00:00:00', 3),
(9, 'Darko', 'Darkić', 'ddarkic', 'ddarkic@gmail.com', 'reg_5', 'b9c927e2194d45efbf2957fc85d03148e3b5accb', '2020-04-14 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-14 00:00:00', 3),
(10, 'Tomo', 'Tomić', 'ttomic', 'ttomic@foi.hr', 'reg_6', '80378d86ceed71ff27300ced1c40572a3f4e838a', '2020-04-07 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-07 00:00:00', 3),
(11, 'Zlatko', 'Zlatkić', 'zzlatkic', 'zzlatkic@gmail.com', 'reg_7', '07926fffc08796ac0fec7e8b4080f9471f1784a5', '2020-04-07 00:00:00', NULL, '0000-00-00 00:00:00', 1, '2020-04-07 00:00:00', 3),
(12, 'Mirko', 'Mirkić', 'mmirkic', 'mmirkic@gmail.com', 'reg_8', '9668fb616f6f5a50d71499e18cbee5488b374d1a', '2020-04-12 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-12 00:00:00', 3),
(13, 'Pero', 'Perić', 'pperic', 'pperic@foi.hr', 'reg_9', '52d92af9fe1e104d3dc54f5beab527b31cde465f', '2020-04-28 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-28 00:00:00', 3),
(14, 'Krešo', 'Krešić', 'kkresic', 'kkresic@foi.hr', 'reg_10', '07dc598ced82d444d11ce7aac5c4e2c23689d08f', '2020-04-05 00:00:00', NULL, '0000-00-00 00:00:00', 0, '2020-04-05 00:00:00', 3),
(15, 'Mihael', 'Mruh', 'mmruh', 'mmruh@gmail.com', '1234', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-06-01 19:44:36', NULL, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 1),
(16, 'Mihaela', 'Mruh', 'mihmruh', 'jvresk@foi.hr', '1234', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2020-06-01 19:52:01', NULL, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 1),
(17, 'Hrvoje', 'Horvat', 'hhjopa', 'jopaa@jopaa.jop', '********', 'c07eb5a8c0dc7bb81c217b67f11c3b7a5e95ffd7', '2020-06-04 15:38:44', '123456', '2020-06-05 16:19:51', 3, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `Lokacija_id` int(11) NOT NULL,
  `mjesto` varchar(45) NOT NULL,
  `grad` varchar(45) NOT NULL,
  `drzava` varchar(45) NOT NULL,
  `slika_pobjednika` text DEFAULT NULL,
  `Utrka_Utrka_id` int(11) NOT NULL,
  `Utrka_Biciklijada_Biciklijada_id` int(11) NOT NULL,
  `Moderator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`Lokacija_id`, `mjesto`, `grad`, `drzava`, `slika_pobjednika`, `Utrka_Utrka_id`, `Utrka_Biciklijada_Biciklijada_id`, `Moderator`) VALUES
(1, 'Vodice', 'Vodice', 'Hrvatska', 'https://www.onlinegamblingbible.com/wp-content/uploads/2015/09/cycling.jpg', 1, 1, 2),
(2, 'Zadar', 'Zadar', 'Hrvatska', 'https://lh3.googleusercontent.com/proxy/AiMqbVlBClyLeMUdGY4OkdWedrilepk5IM1UF4cOmYedvl8WBrwWvI17YwEpRu9HNbimiQlm_21EglUxQ5lS4b8vF6ZR0GH-jzCrf3FH6pMSCDuD-gVni-ttk0dRY31CMGkG', 2, 1, 3),
(4, 'Ključ', 'Šibenik', 'Hrvatska', 'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/2/2018/07/GettyImages-1002643136.jpg', 3, 1, 4),
(9, 'Ivanec', 'Ivanec', 'Hrvatska', 'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/2/2018/07/GettyImages-997822652.jpg', 4, 8, 2),
(10, 'Vidovec', 'Vidovec', 'Hrvatska', NULL, 5, 8, 3),
(11, 'Split', 'Split', 'Hrvatska', NULL, 6, 5, 4),
(12, 'Dubrovnik', 'Dubrovnik', 'Hrvatska', NULL, 7, 5, 2),
(15, 'Gornji Grad', 'Zagreb', 'Hrvatska', NULL, 8, 9, 3),
(16, 'Samobor', 'Samobor', 'Hrvatska', 'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/2/2018/07/GettyImages-999433042.jpg', 9, 9, 4),
(17, 'Sesvete', 'Sesvete', 'Hrvatska', NULL, 10, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `odrzati`
--

CREATE TABLE `odrzati` (
  `Biciklijada_Biciklijada_id` int(11) NOT NULL,
  `Lokacija_Lokacija_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `odrzati`
--

INSERT INTO `odrzati` (`Biciklijada_Biciklijada_id`, `Lokacija_Lokacija_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(5, 11),
(5, 12),
(8, 9),
(8, 10),
(9, 15),
(9, 16),
(9, 17);

-- --------------------------------------------------------

--
-- Table structure for table `prijava`
--

CREATE TABLE `prijava` (
  `Prijava_id` int(11) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `godina_rodenja` int(11) NOT NULL,
  `kontakt` text NOT NULL,
  `Biciklist` int(11) NOT NULL,
  `Racun_Racun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prijava`
--

INSERT INTO `prijava` (`Prijava_id`, `ime`, `prezime`, `godina_rodenja`, `kontakt`, `Biciklist`, `Racun_Racun_id`) VALUES
(1, 'Hrvoje', 'Horvat', 1990, 'hhorvat@gmail.com', 5, 1),
(2, 'Branko', 'Brankić', 1991, 'bbrankic@gmai.com', 6, 2),
(3, 'Mate', 'Matić', 1992, 'mmatic@gmail.com', 7, 3),
(4, 'Ivan', 'Ivanić', 1993, 'iivanic@gmail.com', 8, 4),
(5, 'Darko', 'Darkić', 1994, 'ddarkic@gmail.com', 9, 5),
(6, 'Tomo', 'Tomić', 1995, 'ttomic@gmail.com', 10, 6),
(7, 'Zlatko', 'Zlatkić', 1980, '0981234321', 11, 7),
(8, 'Mirko', 'Mirkić', 1981, '0954322345', 12, 8),
(9, 'Pero', 'Perić', 1999, 'pperic@gmail.com', 13, 9),
(10, 'Krešo', 'Krešić', 1970, '0912345432', 14, 10),
(22, 'jhg', 'jnhbg', 2000, 'jnhbg', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `racun`
--

CREATE TABLE `racun` (
  `Racun_id` int(11) NOT NULL,
  `datum_izdavanja` datetime NOT NULL,
  `iznos` double NOT NULL,
  `racun_za_uplatu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racun`
--

INSERT INTO `racun` (`Racun_id`, `datum_izdavanja`, `iznos`, `racun_za_uplatu`) VALUES
(1, '2020-04-23 00:00:00', 100, 'HR1111111111111111111'),
(2, '2020-04-05 00:00:00', 200, 'HR1111111111111111111'),
(3, '2020-04-05 00:00:00', 300, 'HR1111111111111111111'),
(4, '2020-04-15 00:00:00', 100, 'HR2222222222222222222'),
(5, '2020-04-06 00:00:00', 100, 'HR2222222222222222222'),
(6, '2020-04-16 00:00:00', 100, 'HR2222222222222222222'),
(7, '2020-04-20 00:00:00', 200, 'HR2222222222222222222'),
(8, '2020-02-21 00:00:00', 100, 'HR2222222222222222222'),
(9, '2020-02-02 00:00:00', 300, 'HR2222222222222222222'),
(10, '2020-02-17 00:00:00', 100, 'HR2222222222222222222');

-- --------------------------------------------------------

--
-- Table structure for table `rezultat`
--

CREATE TABLE `rezultat` (
  `Rezultat_id` int(11) NOT NULL,
  `odustao` tinyint(4) DEFAULT NULL,
  `razlog` text DEFAULT NULL,
  `vrijeme_zavrsetka` time DEFAULT NULL,
  `Utrka_Utrka_id` int(11) NOT NULL,
  `Utrka_Biciklijada_Biciklijada_id` int(11) NOT NULL,
  `Korisnik_korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rezultat`
--

INSERT INTO `rezultat` (`Rezultat_id`, `odustao`, `razlog`, `vrijeme_zavrsetka`, `Utrka_Utrka_id`, `Utrka_Biciklijada_Biciklijada_id`, `Korisnik_korisnik_id`) VALUES
(1, NULL, NULL, '17:24:08', 1, 1, 5),
(2, NULL, NULL, '15:16:39', 2, 1, 8),
(3, NULL, NULL, '19:28:16', 3, 1, 9),
(4, NULL, NULL, '19:47:22', 4, 8, 7),
(5, NULL, NULL, '11:17:38', 5, 8, 13),
(6, NULL, NULL, '13:19:32', 6, 5, 6),
(7, NULL, NULL, '22:36:19', 7, 5, 11),
(8, 1, 'Slomio ruku', NULL, 8, 9, 10),
(9, NULL, NULL, '16:20:39', 9, 9, 12),
(10, NULL, NULL, '13:17:46', 10, 9, 14);

-- --------------------------------------------------------

--
-- Table structure for table `sudjeluje`
--

CREATE TABLE `sudjeluje` (
  `Korisnik_korisnik_id` int(11) NOT NULL,
  `Biciklijada_Biciklijada_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sudjeluje`
--

INSERT INTO `sudjeluje` (`Korisnik_korisnik_id`, `Biciklijada_Biciklijada_id`) VALUES
(5, 1),
(6, 5),
(7, 8),
(8, 1),
(9, 1),
(10, 9),
(11, 5),
(12, 9),
(13, 8),
(14, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tip_korisnika`
--

CREATE TABLE `tip_korisnika` (
  `Tip_korisnika_id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`Tip_korisnika_id`, `naziv`, `opis`) VALUES
(1, 'Administrator', 'Ima sva prava kao i ostale uloge te može obavljati CRUD operacije nad podacima.'),
(2, 'Moderator', 'Ima sva prava kao i registrirani korisnik.'),
(3, 'Registrirani korisnik', 'Ima sva prava kao i neregistrirani korisnik. Ima kreiran i aktiviran korisnički račun.');

-- --------------------------------------------------------

--
-- Table structure for table `tip_radnje`
--

CREATE TABLE `tip_radnje` (
  `Tip_radnje_id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tip_radnje`
--

INSERT INTO `tip_radnje` (`Tip_radnje_id`, `naziv`, `opis`) VALUES
(1, 'Prijava/Odjava', 'Zapisuju se informacije o korisniku i vremenu.'),
(2, 'Rad s bazom', 'Zapisuju se informacije o korisniku, vremenu u kojem je korisnik izvršavao upit i izvršeni upit.'),
(3, 'Ostale radnje', 'Zapisuju se informacije o korisniku, vremenu i radnji koju je korisnik obavaljao.');

-- --------------------------------------------------------

--
-- Table structure for table `uplata`
--

CREATE TABLE `uplata` (
  `Uplata_id` int(11) NOT NULL,
  `datum_vrijeme` datetime NOT NULL,
  `iznos` double NOT NULL,
  `Racun_Racun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uplata`
--

INSERT INTO `uplata` (`Uplata_id`, `datum_vrijeme`, `iznos`, `Racun_Racun_id`) VALUES
(1, '2020-05-01 00:00:00', 100, 1),
(2, '2020-05-06 00:00:00', 100, 4),
(3, '2020-05-04 00:00:00', 100, 5),
(4, '2020-05-05 00:00:00', 100, 6),
(5, '2020-05-07 00:00:00', 100, 8),
(6, '2020-05-14 00:00:00', 100, 10),
(7, '2020-05-31 00:00:00', 200, 2),
(8, '2020-04-20 00:00:00', 200, 7),
(9, '2020-04-23 00:00:00', 300, 3),
(10, '2020-05-21 00:00:00', 300, 9);

-- --------------------------------------------------------

--
-- Table structure for table `utrka`
--

CREATE TABLE `utrka` (
  `Utrka_id` int(11) NOT NULL,
  `startnina` double NOT NULL,
  `broj_natjecatelja` int(11) NOT NULL,
  `pocetak` datetime NOT NULL,
  `zavrsetak` datetime DEFAULT NULL,
  `Biciklijada_Biciklijada_id` int(11) NOT NULL,
  `Lokacija_id` int(11) DEFAULT NULL,
  `naziv` varchar(30) DEFAULT NULL,
  `pobjednik_slika` text DEFAULT NULL,
  `suglasnost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utrka`
--

INSERT INTO `utrka` (`Utrka_id`, `startnina`, `broj_natjecatelja`, `pocetak`, `zavrsetak`, `Biciklijada_Biciklijada_id`, `Lokacija_id`, `naziv`, `pobjednik_slika`, `suglasnost`) VALUES
(1, 100, 10, '2020-06-03 00:00:00', '2020-06-04 00:00:00', 1, 1, 'Utrka na rivi', 'https://images.immediate.co.uk/production/volatile/sites/21/2019/03/dohcz_uxuaaedw__670-1538578263838-lzkfuo8rlq51-d3a22b8.jpg?quality=90&resize=960%2C540', 1),
(2, 100, 20, '2020-06-04 00:00:00', '2020-06-05 00:00:00', 1, 1, 'Vodena utrka', 'https://cdn.mos.cms.futurecdn.net/2FqJ7ELT9EcKwRWxyRckCU.jpg', NULL),
(3, 100, 5, '2020-06-05 00:00:00', '2020-06-06 00:00:00', 1, 2, 'Utrka uz orgulje', 'https://static.toiimg.com/thumb/msid-73697046,imgsize-166213,width-400,resizemode-4/73697046.jpg', NULL),
(4, 300, 30, '2020-06-14 00:00:00', '2020-06-15 00:00:00', 8, 10, 'Zeljarijada', 'https://biketoday.news/storage/articles/4504/1581499698_main.jpg', 1),
(5, 300, 10, '2020-06-16 00:00:00', '2020-06-17 00:00:00', 8, 9, 'Put vitezova', 'https://dk8nafk1kle6o.cloudfront.net/Images/Giant/Showcases/MY20-Propel-ADSL-D_banner_1571347009.jpg', 1),
(6, 200, 40, '2020-07-01 00:00:00', '2020-07-02 00:00:00', 5, 2, 'Slana utrka', 'https://images.squarespace-cdn.com/content/v1/5c6d81d87d0c91244a74be71/1583154769026-7CUMQB1CWNXRS4F7VQ3E/ke17ZwdGBToddI8pDm48kOgWpXhcYDycKNlBj46AzuB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UZV3v8tcARxvMKWbP759FRluXjMMxOt0gx3RIvUsADYCO1ecLVCJQYy9cMPmyV9Sog/CCC+Propel.jpg', 1),
(7, 200, 10, '2020-07-02 00:00:00', '2020-07-03 00:00:00', 5, 1, 'Sunčana utrka', 'https://cyclingtips.com/wp-content/uploads/2017/06/CORVOS_00026930-011.jpg', 1),
(8, 100, 50, '2020-10-04 00:00:00', '2020-10-05 00:00:00', 9, 15, 'Utrka na Gornjem Gradu', 'kjhghb', 0),
(9, 100, 30, '2020-10-06 00:00:00', '2020-10-07 00:00:00', 9, 12, 'Utrka zidinama', 'https://i.dailymail.co.uk/i/pix/2016/03/31/05/32B03B0000000578-3516676-image-m-2_1459396820620.jpg', NULL),
(10, 100, 5, '2020-10-08 00:00:00', NULL, 9, 15, 'Zagrebačka utrka', 'https://www.itinerad.com/wp-content/uploads/2017/03/62f5e3cb96843bf9f4945306adc88a1d.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biciklijada`
--
ALTER TABLE `biciklijada`
  ADD PRIMARY KEY (`Biciklijada_id`),
  ADD KEY `fk_Biciklijada_Korisnik1_idx` (`Organizator`);

--
-- Indexes for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD PRIMARY KEY (`Dnevnik_id`,`Tip_radnje_Tip_radnje_id`,`Korisnik_korisnik_id`),
  ADD KEY `fk_Dnevnik_Tip_radnje1_idx` (`Tip_radnje_Tip_radnje_id`),
  ADD KEY `fk_Dnevnik_Korisnik1_idx` (`Korisnik_korisnik_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`),
  ADD KEY `fk_Korisnik_Tip_korisnika_idx` (`Tip_korisnika_Tip_korisnika_id`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`Lokacija_id`,`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`),
  ADD KEY `fk_Lokacija_Utrka1_idx` (`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`),
  ADD KEY `fk_Lokacija_Korisnik1_idx` (`Moderator`);

--
-- Indexes for table `odrzati`
--
ALTER TABLE `odrzati`
  ADD PRIMARY KEY (`Biciklijada_Biciklijada_id`,`Lokacija_Lokacija_id`),
  ADD KEY `fk_odrzati_Biciklijada1_idx` (`Biciklijada_Biciklijada_id`),
  ADD KEY `fk_odrzati_Lokacija1_idx` (`Lokacija_Lokacija_id`);

--
-- Indexes for table `prijava`
--
ALTER TABLE `prijava`
  ADD PRIMARY KEY (`Prijava_id`),
  ADD KEY `fk_Prijava_Korisnik1_idx` (`Biciklist`),
  ADD KEY `fk_Prijava_Racun1_idx` (`Racun_Racun_id`);

--
-- Indexes for table `racun`
--
ALTER TABLE `racun`
  ADD PRIMARY KEY (`Racun_id`);

--
-- Indexes for table `rezultat`
--
ALTER TABLE `rezultat`
  ADD PRIMARY KEY (`Rezultat_id`,`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`,`Korisnik_korisnik_id`),
  ADD KEY `fk_Rezultat_Utrka1_idx` (`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`),
  ADD KEY `fk_Rezultat_Korisnik1_idx` (`Korisnik_korisnik_id`);

--
-- Indexes for table `sudjeluje`
--
ALTER TABLE `sudjeluje`
  ADD PRIMARY KEY (`Korisnik_korisnik_id`,`Biciklijada_Biciklijada_id`),
  ADD KEY `fk_sudjeluje_Korisnik1_idx` (`Korisnik_korisnik_id`),
  ADD KEY `fk_sudjeluje_Biciklijada1_idx` (`Biciklijada_Biciklijada_id`);

--
-- Indexes for table `tip_korisnika`
--
ALTER TABLE `tip_korisnika`
  ADD PRIMARY KEY (`Tip_korisnika_id`);

--
-- Indexes for table `tip_radnje`
--
ALTER TABLE `tip_radnje`
  ADD PRIMARY KEY (`Tip_radnje_id`);

--
-- Indexes for table `uplata`
--
ALTER TABLE `uplata`
  ADD PRIMARY KEY (`Uplata_id`),
  ADD KEY `fk_Uplata_Racun1_idx` (`Racun_Racun_id`);

--
-- Indexes for table `utrka`
--
ALTER TABLE `utrka`
  ADD PRIMARY KEY (`Utrka_id`,`Biciklijada_Biciklijada_id`),
  ADD KEY `fk_Utrka_Biciklijada1_idx` (`Biciklijada_Biciklijada_id`),
  ADD KEY `Lokacija_id` (`Lokacija_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biciklijada`
--
ALTER TABLE `biciklijada`
  MODIFY `Biciklijada_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dnevnik`
--
ALTER TABLE `dnevnik`
  MODIFY `Dnevnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `Lokacija_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `prijava`
--
ALTER TABLE `prijava`
  MODIFY `Prijava_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `racun`
--
ALTER TABLE `racun`
  MODIFY `Racun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rezultat`
--
ALTER TABLE `rezultat`
  MODIFY `Rezultat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tip_korisnika`
--
ALTER TABLE `tip_korisnika`
  MODIFY `Tip_korisnika_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tip_radnje`
--
ALTER TABLE `tip_radnje`
  MODIFY `Tip_radnje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uplata`
--
ALTER TABLE `uplata`
  MODIFY `Uplata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `utrka`
--
ALTER TABLE `utrka`
  MODIFY `Utrka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biciklijada`
--
ALTER TABLE `biciklijada`
  ADD CONSTRAINT `fk_Biciklijada_Korisnik1` FOREIGN KEY (`Organizator`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD CONSTRAINT `fk_Dnevnik_Korisnik1` FOREIGN KEY (`Korisnik_korisnik_id`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Dnevnik_Tip_radnje1` FOREIGN KEY (`Tip_radnje_Tip_radnje_id`) REFERENCES `tip_radnje` (`Tip_radnje_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_Korisnik_Tip_korisnika` FOREIGN KEY (`Tip_korisnika_Tip_korisnika_id`) REFERENCES `tip_korisnika` (`Tip_korisnika_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD CONSTRAINT `fk_Lokacija_Korisnik1` FOREIGN KEY (`Moderator`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Lokacija_Utrka1` FOREIGN KEY (`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`) REFERENCES `utrka` (`Utrka_id`, `Biciklijada_Biciklijada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `odrzati`
--
ALTER TABLE `odrzati`
  ADD CONSTRAINT `fk_odrzati_Biciklijada1` FOREIGN KEY (`Biciklijada_Biciklijada_id`) REFERENCES `biciklijada` (`Biciklijada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_odrzati_Lokacija1` FOREIGN KEY (`Lokacija_Lokacija_id`) REFERENCES `lokacija` (`Lokacija_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prijava`
--
ALTER TABLE `prijava`
  ADD CONSTRAINT `fk_Prijava_Korisnik1` FOREIGN KEY (`Biciklist`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Prijava_Racun1` FOREIGN KEY (`Racun_Racun_id`) REFERENCES `racun` (`Racun_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rezultat`
--
ALTER TABLE `rezultat`
  ADD CONSTRAINT `fk_Rezultat_Korisnik1` FOREIGN KEY (`Korisnik_korisnik_id`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Rezultat_Utrka1` FOREIGN KEY (`Utrka_Utrka_id`,`Utrka_Biciklijada_Biciklijada_id`) REFERENCES `utrka` (`Utrka_id`, `Biciklijada_Biciklijada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sudjeluje`
--
ALTER TABLE `sudjeluje`
  ADD CONSTRAINT `fk_sudjeluje_Biciklijada1` FOREIGN KEY (`Biciklijada_Biciklijada_id`) REFERENCES `biciklijada` (`Biciklijada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sudjeluje_Korisnik1` FOREIGN KEY (`Korisnik_korisnik_id`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `uplata`
--
ALTER TABLE `uplata`
  ADD CONSTRAINT `fk_Uplata_Racun1` FOREIGN KEY (`Racun_Racun_id`) REFERENCES `racun` (`Racun_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `utrka`
--
ALTER TABLE `utrka`
  ADD CONSTRAINT `fk_Utrka_Biciklijada1` FOREIGN KEY (`Biciklijada_Biciklijada_id`) REFERENCES `biciklijada` (`Biciklijada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `utrka_ibfk_1` FOREIGN KEY (`Lokacija_id`) REFERENCES `lokacija` (`Lokacija_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
