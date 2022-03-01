<?php
require '../baza.class.php';
require '../klase/utrka.php';

header("Content-Type: application/json; charset=UTF-8");

$veza=new Baza();
$veza->spojiDB();
$upit="select l.Lokacija_id, l.grad, count(u.Utrka_id) as ukupno
from lokacija l, utrka u  
where l.Lokacija_id=u.Lokacija_id
group by 2";
$rezultat=$veza->selectDB($upit);

$json=[];
$lokacije=array();

while($red=mysqli_fetch_array($rezultat)){
    $lokacije[]=$red;

}

$veza->zatvoriDB();

echo json_encode($lokacije);

exit();



?>