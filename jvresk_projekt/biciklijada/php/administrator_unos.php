<?php
require '../baza.class.php';



if(isset($_POST["Grad"])){

    $veza=new Baza();
    $veza->spojiDB();
    
    $grad=$_POST["Grad"];
    $drzava=$_POST["Drzava"];
    $moderator=$_POST["Moderator"];
    
    
    $sql="insert into lokacija (mjesto, grad, drzava, slika_pobjednika, Utrka_Utrka_id, Utrka_Biciklijada_Biciklijada_id, Moderator) 
        values('mjesto', '$grad','$drzava', 'slika', '8', '9', '$moderator')";
    $rezultat=$veza->updateDB($sql);

    echo json_encode($rezultat);
    
    $veza->zatvoriDB();

    exit();
}

if(isset($_POST["Biciklijada"])){

    $veza=new Baza();
    $veza->spojiDB();
    
    $biciklijada=$_POST["Biciklijada"];
    $startnina=$_POST["Startnina"];
    $brnat=$_POST["Brnat"];
    $pocetak=$_POST["Pocetak"];
    
    
    $sql="insert into utrka (startnina, broj_natjecatelja, pocetak, zavrsetak, Biciklijada_Biciklijada_id, Lokacija_id, naziv, pobjednik_slika, suglasnost) 
    values('$startnina', '$brnat','$pocetak', '2020-06-10 00:00:00', '9', '15', '$biciklijada', 'neke', '1')
    ";
    $rezultat=$veza->updateDB($sql);

    echo json_encode($rezultat);
    
    $veza->zatvoriDB();

    exit();
}