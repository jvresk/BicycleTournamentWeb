<?php
require '../baza.class.php';

if(isset($_POST['korime'])){
    
    $veza=new Baza();
    $veza->spojiDB();
    $korime=$_POST['korime'];
    echo($korime);
    $upit="update korisnik set status=0 where `korisnicko_ime`='$korime'";

    $veza->updateDB($upit);
}

if(isset($_POST['ID_korisnika'])){
    $veza=new Baza();
    $veza->spojiDB();
    $id=$_POST['ID_korisnika'];
    echo($id);
    $upit="update korisnik set status=0 where `korisnik_id`='$id'";
    $veza->updateDB($upit);

    $veza->zatvoriDB();


    exit();
}


?>