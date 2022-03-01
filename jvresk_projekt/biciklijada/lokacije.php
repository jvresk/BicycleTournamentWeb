<?php
$path=dirname($_SERVER['REQUEST_URI']);
$folder=getcwd();
include_once './php/header.php';

if(isset($_GET['logout'])){
    $s->obrisiSesiju();
}

?>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>Lokacije</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="naslov" content="WebDiP projekt">
    <meta name="autor" content="Josipa Vresk">
    <meta name="datum" content="3.6.2020.">
    <meta name="ključne riječi" content="lokacije, korisnik, prijava">
    <link href="css/jvresk.css" rel="stylesheet" type="text/css">
    <link href="css/jvresk_prilagodbe.css" rel="stylesheet" type="text/css" />
    <link href="css/jvresk_ispis.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="javascript/popis_neregistrirani.js"></script>
  
</head>

<body>
    <header>
      

        <h1>
            <img usemap="#logo" src="multimedija/logo.png" alt="diy logo" width="120" height="90" />

            <map name="logo">
                <area href="index.php" alt="pravokutnik" shape="rect" coords="0,0,120,90" />
            </map>
            Lokacije</h1>
    </header>

    <hr>

    <nav>
        <ul>
        <li><a href="./index.php">Početna stranica</a></li>
            <li><a href="./obrasci/prijava.php">Prijava</a></li>
            <li><a href="./obrasci/registracija.php">Registracija</a></li>
            <li><a href="./utrke.php">Utrke</a></li>
            <li><a href="./lokacije.php">Lokacije</a></li>
            
            <?php if(($s->ulogiran()) && ($s->dajKorisnika()["uloga"] <= 3)) { ?>
            <li><a href="./registrirani_rezultati.php">Moji rezultati</a></li>
            <li><a href="./registrirani_prijava.php">Prijava za utrku</a></li>
            
            <?php } ?>
            <?php if(($s->ulogiran()) && ($s->dajKorisnika()["uloga"] <= 1)) { ?>
            <li><a href="./obrazac_lokacije_administrator.php">Unos utrka</a></li>
            <li><a href="./administrator_korisnici.php">Popis korisnika</a></li>
            
            <?php } ?>

            <?php if($s->ulogiran()) { ?>
            <li><a href="./lokacije.php?logout=1">Odjava</a></li>
            <?php } ?>
            <li><a href="./o_autoru.html">O autoru</a></li>
        </ul>
    </nav>

    <table border="1" id="table" >
        <caption >Popis lokacija biciklijada: </caption>
        <thead >
            <tr>
                <th>Lokacija</th>
                <th>Ukupno utrka</th>
            </tr>
        </thead>

        <tbody>
            
        </tbody>
    </table>

    

    <footer>
        <div class="footer">
            <hr>
            <img usemap=#val1 src="multimedija/CSS3.png" alt="css3 logo" width="50" height="50" />
            <map name="val1">
                <area
                    href="https://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2Fbarka.foi.hr%2FWebDiP%2F2019%2Fzadaca_04%2Fjvresk%2Fcss%2Fjvresk.css&profile=css3svg&usermedium=all&warning=1&vextwarning=&lang=en"
                    alt="pravokutnik" shape="rect" coords="0,0,50,50" />
            </map>
            <img usemap=#val2 src="multimedija/HTML5.png" alt="html logo" width="45" height="45" />
            <map name="val2">
                <area
                    href="https://validator.w3.org/nu/?doc=http%3A%2F%2Fbarka.foi.hr%2FWebDiP%2F2019%2Fzadaca_04%2Fjvresk%2Fobrasci%2Fprijava.html"
                    alt="pravokutnik" shape="rect" coords="0,0,45,45" />
            </map>
            <address>Kontakt: <a href="mailto:jvresk@foi.hr">Josipa Vresk</a></address>
            <small>&copy; 2020 J.Vresk</small>

        </div>

    </footer>
</body>

</html>