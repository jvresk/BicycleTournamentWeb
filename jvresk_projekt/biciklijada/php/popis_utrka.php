<?php
require '../baza.class.php';
require '../klase/utrka.php';

header("Content-Type: application/json; charset=UTF-8");

$veza=new Baza();
$veza->spojiDB();
$datum=date("Y-m-d H:i:s");
$upit="select u. naziv, u.broj_natjecatelja, u.pocetak, l.grad 
from utrka u, lokacija l, biciklijada b 
where l.Lokacija_id=u.Lokacija_id and b.Biciklijada_id=u.Biciklijada_Biciklijada_id and u.pocetak>='$datum'";
$rezultat=$veza->selectDB($upit);

$json=[];
while(true){
    $red=$rezultat->fetch_assoc();
    if($red==null){
        break;
    }
    $utrka=new Utrka;

    $utrka->naziv=$red['naziv'];
    $utrka->lokacija=$red['grad'];
    $utrka->broj_natjecatelja=$red['broj_natjecatelja'];
    $utrka->pocetak=$red['pocetak'];
    
    array_push($json, $utrka);
}

echo json_encode($json);



?>