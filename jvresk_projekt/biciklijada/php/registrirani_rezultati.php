<?php
require '../baza.class.php';
require '../klase/utrka.php';
require './sesija.class.php';

//header("Content-Type: application/json; charset=UTF-8");


$veza=new Baza();
$veza->spojiDB();
$korime=Sesija::dajKorisnika();
$Korime=$korime['korime'];
$upit="Select rezultat.Utrka_Utrka_id, rezultat.odustao, rezultat.razlog, rezultat.vrijeme_zavrsetka, utrka.pobjednik_slika, utrka.suglasnost, korisnik.korisnik_id from rezultat inner join korisnik on korisnik.korisnik_id=rezultat.Korisnik_korisnik_id 
inner join utrka on utrka.Utrka_id=rezultat.Utrka_Utrka_id where korisnik.korisnicko_ime='$Korime'";
$rezultat=$veza->selectDB($upit);

$json=[];
$rezultati=array();

while($red=mysqli_fetch_array($rezultat)){
    $rezultati[]=$red;

}

echo json_encode($rezultati);

$veza->zatvoriDB();

exit();



?>