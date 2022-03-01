<?php

require_once '../baza.class.php';
require './sesija.class.php';



if(isset($_POST["ID_utrke"])){

    
    $veza=new Baza();
    $veza->spojiDB();
    $id=$_POST["ID_utrke"];
    $adresa=$_POST["Adresa"];
    $suglasnost=$_POST["Suglasnost"];


    

    $upit="UPDATE `utrka` SET utrka.pobjednik_slika = '$adresa', utrka.suglasnost='$suglasnost' WHERE utrka.Utrka_id = $id ";
    $veza->updateDB($upit);
    $veza->zatvoriDB();
    $uspjesno = "Uspješno spremljena slika!";
        echo json_encode($uspjesno);
        exit();
}






?>