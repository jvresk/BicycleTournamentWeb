<?php
require '../baza.class.php';
require 'sesija.class.php';

if(isset($_POST['korime'], $_POST['lozinka'])){
    $veza=new Baza();
    $veza->spojiDB();
    $korime=$_POST['korime'];
    $lozinka=$_POST['lozinka'];
    $upit="select * from korisnik where korisnicko_ime='$korime' and lozinka='$lozinka' and status=1";
    $rezultat=$veza->selectDB($upit);
    $pronaden=false;

    $korime=array();
    while($red=mysqli_fetch_array($rezultat)){
    $korime[]=$red;
    if($red == null) {
        $pronaden=false;
        break;
    } else {
        $pronaden=true;
        Sesija::kreirajKorisnika($korime[0][3], $korime[0][12]);
        
        exit();
    }

    }

    
    /*while(true){
        $red=$rezultat->fetch_assoc();
        $veza->zatvoriDB();
        
    }*/
    
    if($pronaden==true){
        echo("ok");
    } else {
        echo("error");
    }
}
?>