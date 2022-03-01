<?php
require '../baza.class.php';


if(isset($_POST['korisnicko_ime'])){

    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $charactersLength = strlen($characters);
        
            $nova_lozinka = '';
            for ($i = 0; $i < 20; $i++) {
                $nova_lozinka .= $characters[rand(0, $charactersLength - 1)];
        }


    $veza=new Baza();
    $veza->spojiDB();
    $korime=$_POST['korisnicko_ime'];
    $upit="select email from korisnik where korisnicko_ime='$korime'";
    $rezultat=$veza->selectDB($upit);

    $email=array();
    while($red=mysqli_fetch_array($rezultat)){
    $email[]=$red;

    }

    $upit2="update korisnik set lozinka='$nova_lozinka' where korisnicko_ime='$korime'";
    $veza->updateDB($upit2);
        
    mail($email[0][0], "Nova lozinka", $nova_lozinka);
    
    $veza->zatvoriDB();

    exit();
    
    
}

