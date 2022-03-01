<?php

$path=dirname($_SERVER['REQUEST_URI']);
$folder=getcwd();
include_once './php/header.php';




/*if(!$s->ulogiran()){
    header("Location: ./obrasci/prijava.php");
    exit();
}*/

?>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="hr">

<head>
    <title>Početna stranica</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="naslov" content="WebDiP projekt">
    <meta name="autor" content="Josipa Vresk">
    <meta name="datum" content="28.5.2020.">
    <meta name="ključne riječi" content="početna, biciklijade, index, grid">

    <link href="css/jvresk.css" rel="stylesheet" type="text/css">
    <link href="css/jvresk_prilagodbe.css" rel="stylesheet" type="text/css" />
    <link href="css/jvresk_ispis.css" rel="stylesheet" type="text/css">
    <script src="./javascript/dark.js"></script>

</head>


<body class="resetka">
    <header class="spojiStupce">
        
        

        <h1 id="pocetna">
           
            <img usemap="#logo" id="logo" src="multimedija/logo.png" alt="biciklijade logo" width="190" height="160" />
            <map name="logo">
                <area href="index.php" alt="pravokutnik" shape="rect" coords="0,0,190,160" />
            </map>

            <button onclick="Promjena()" >&#127761;</button>
            
        </h1>

        <hr>
    </header>
    


    <div class="izbornik_poc">
        <div>
            <img usemap="#mapa1" src="multimedija/izbornik_poc.png" alt="izbornik_slika" width="500" height="400"/>
        </div>
        <map name="mapa1">
            <area href="obrasci/prijava.php" alt="prijava" shape="rect" coords="50,0,210,110" />
            <area href="utrke.php" alt="utrke" shape="rect" coords="50,110,210,240" />
            <area href="o_autoru.html" alt="oautoru" shape="rect" coords="50,240,210,400" />
            <area href="obrasci/registracija.php" alt="registracija" shape="rect" coords="300,0,450,110" />
            <area href="lokacije.php" alt="lokacije" shape="rect" coords="300,110,450,240" />
            <area href="dokumentacija.html" alt="dokumentacija" shape="rect" coords="300,240,450,400" />
            
        </map>
    </div>

    <div class="opis">
        Zapedalirajte u svijet bicikliranja. Pridružite se mnoštvu rekreativaca i profesionalaca u istraživanju različitih kutaka 
        svijeta, uživajući u ljepotama prirode i živeći punim plućima. Ova stranica pomoći će Vam da ostanete informirani o 
        događajima vezanim uz biciklijade koje će se održavati te informacije o proteklim biciklijadama, a isto tako sadrži informacije
        o utrkama vezanim uz pojedinu biciklijadu i lokacijama koje su bile uključena u utrke.
    </div>


    <footer class="spojiFooter">
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
                    href="https://validator.w3.org/nu/?doc=http%3A%2F%2Fbarka.foi.hr%2FWebDiP%2F2019%2Fzadaca_04%2Fjvresk%2Findex.html"
                    alt="pravokutnik" shape="rect" coords="0,0,45,45" />
            </map>


            <address>Kontakt: <a href="mailto:jvresk@foi.hr">Josipa Vresk</a></address>
            <small>&copy; 2020 J.Vresk</small>
            
        </div>

    </footer>
</body>

</html>