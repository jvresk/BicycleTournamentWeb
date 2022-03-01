<?php
require '../baza.class.php';

if(isset($_GET["token"])){
    $veza=new Baza();
    $veza->spojiDB();
    $token=$_GET["token"];
    $korIme=$_GET["korIme"];
    $datum=date("Y-m-d H:i:s");

    $upit="select * from korisnik where korisnicko_ime='$korIme'";
    $rezultat=$veza->selectDB($upit);
    $pronaden=false;
    while(true){
        $red=$rezultat->fetch_assoc();
        if($red == null) {
            $pronaden=false;
            break;
        } else {
            $pronaden=true;
            if ($token==$red['token'] && $datum<=$red['aktivacija']){
                $promjena="update korisnik set token=null where korisnicko_ime='$korIme'";
                $veza->updateDB($promjena);
                header('location: ../obrasci/prijava.html');
            }
            break;
        }
    }

    
        
}

?>