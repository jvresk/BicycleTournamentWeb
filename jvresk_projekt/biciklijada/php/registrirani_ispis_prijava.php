<?php
require_once "./sesija.class.php";
require_once "../baza.class.php";

$s=new Sesija();
$s->kreirajSesiju();

$korime=$s->dajKorisnika()['korime'];


$veza=new Baza();
$veza->spojiDB();
$upit="SELECT prijava.ime, prijava.prezime, prijava.godina_rodenja, prijava.kontakt from prijava 
inner join korisnik on prijava.Biciklist=korisnik.korisnik_id where korisnik.korisnicko_ime='$korime'";
$rezultat=$veza->selectDB($upit);

$json=[];
$prijave=array();

while($red=mysqli_fetch_array($rezultat)){
    $prijave[]=$red;

}

$veza->zatvoriDB();

echo json_encode($prijave);
exit();
?>