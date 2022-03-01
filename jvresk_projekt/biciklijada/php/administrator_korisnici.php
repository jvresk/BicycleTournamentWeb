<?php
require '../baza.class.php';
require '../klase/utrka.php';

header("Content-Type: application/json; charset=UTF-8");

$veza=new Baza();
$veza->spojiDB();
$upit="select * from korisnik";
$rezultat=$veza->selectDB($upit);

$json=[];
$korisnici=array();

while($red=mysqli_fetch_array($rezultat)){
    $korisnici[]=$red;

}

$veza->zatvoriDB();

echo json_encode($korisnici);

exit();



?>