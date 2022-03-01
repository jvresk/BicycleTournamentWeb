<?php
require '../baza.class.php';

if(isset($_POST['korime'])){
    $veza=new Baza();
    $veza->spojiDB();
    $korime=$_POST['korime'];
    $upit="select * from korisnik where korisnicko_ime='$korime'";
    $rezultat=$veza->selectDB($upit);
    $pronaden=false;
    while(true){
        $red=$rezultat->fetch_assoc();
        if($red == null) {
            $pronaden=false;
            break;
        } else {
            $pronaden=true;
            break;
        }
    }
    
    if($pronaden==true){
        echo("error");
    } else {
        echo("ok");
    }
}
?>