<?php

require_once '../baza.class.php';
require './sesija.class.php';



if(isset($_POST["ID_utrke"])){

    
    $veza=new Baza();
    $veza->spojiDB();
    $id=$_POST["ID_utrke"];
    $razlog=$_POST["Razlog"];
    $trajanje=date("Y-m-d H:i:s");
    

    $upit="UPDATE rezultat INNER JOIN utrka ON rezultat.Utrka_Utrka_id = utrka.Utrka_id 
    SET rezultat.odustao = '1', rezultat.razlog = '$razlog' WHERE rezultat.Utrka_Utrka_id = '$id' AND utrka.zavrsetak > '$trajanje'";
    $veza->updateDB($upit);
    $veza->zatvoriDB();
    
        exit();
}






?>