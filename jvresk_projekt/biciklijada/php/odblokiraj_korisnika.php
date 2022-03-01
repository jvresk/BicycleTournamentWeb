<?php
require '../baza.class.php';

if(isset($_POST['ID_korisnika'])){
    $veza=new Baza();
    $veza->spojiDB();
    $id=$_POST['ID_korisnika'];
    echo($id);
    $upit="update korisnik set status=1 where `korisnik_id`='$id'";
    $veza->updateDB($upit);

    $veza->zatvoriDB();

    exit();
}


?>