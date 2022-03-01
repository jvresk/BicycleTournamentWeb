<?php
require '../baza.class.php';
require '../klase/utrka.php';

header("Content-Type: application/json; charset=UTF-8");

$veza=new Baza();
$veza->spojiDB();
$upit="select l.grad, u.zavrsetak 
from lokacija l, biciklijada b, utrka u, odrzati o 
where l.Lokacija_id=o.Lokacija_Lokacija_id && o.Biciklijada_Biciklijada_id=b.Biciklijada_id && b.Biciklijada_id=u.Biciklijada_Biciklijada_id";
$rezultat=$veza->selectDB($upit);

$datum=date("Y-m-d H:i:s");

$json=[];

$veza->zatvoriDB();
while(true){
    $red=$rezultat->fetch_assoc();
    if($red==null || $red['zavrsetak']==null){
        break;
    }
    $utrka=new Utrka;
    $utrka->lokacija=$red['grad'];
    $utrka->zavrsetak=$red['zavrsetak'];
    

    
   
    
    array_push($json, $utrka);
}

echo json_encode($json);



?>