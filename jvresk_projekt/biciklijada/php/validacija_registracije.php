<?php
require '../baza.class.php';



if(isset($_POST["submit"])){
    $error="";
    foreach($_POST as $k => $v){
        if(empty($v)){
            $error .= "Popunite polje: " .$k. "<br>";
        }elseif($k==="imeKorisnika"){
            if($v[0]!==strtoupper($v[0])){
                $error.="Ime treba započeti velikim slovom i imati minimalno tri slova";
            }
        }elseif($k==="prezime"){
            if($v[0]!==strtoupper($v[0])){
                $error.="Prezime počinje veliki početnim slovom i ima barem dva slova";
            }
        }elseif($k==="email"){
            $rePattern='/^([a-zA-Z0-9\S]){5,}([@]){1}([a-zA-Z0-9\S]){3,}([.]){1}([a-z]){2,3}$/';
            if(!preg_match($rePattern, $v)){
                $error.="Pogrešno unesen email";
            }
        }elseif($k==="lozinka"){
            $rePattern='/^([a-zA-Z0-9\S]){4,8}$/';
            if(!preg_match($rePattern, $v)){
                $error.="Lozinka treba imati 4 do 8 znakova";
            }
        }elseif($k==="potvrda"){    
            if($_POST["lozinka"] !== $_POST["potvrda"]){
                $error.="Lozinka i ponovljena lozinka nisu jednake";
            }
        }
    }
    if($error!==""){
        echo($error);
    }else{
        $veza=new Baza();
        $veza->spojiDB();
        
        $korisnickoIme=$_POST["imeKorisnika"];
        $prezimeKorisnika=$_POST["prezime"];
        $korIme=$_POST["korisnicko_ime"];
        $emailKorisnika=$_POST["email"];
        $lozinkaKorisnika=$_POST["lozinka"];
        $sha1lozinka=sha1($_POST["lozinka"]);
        $registracija=date("Y-m-d H:i:s", strtotime("+7 hours"));
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        
        $token = '';
        for ($i = 0; $i < 20; $i++) {
            $token .= $characters[rand(0, $charactersLength - 1)];
        }
        $sql="insert into korisnik (ime, prezime, `korisnicko_ime`, email, lozinka, `lozinka_sha1`, aktivacija, Registracija, status, `Tip_korisnika_Tip_korisnika_id`) 
        values('$korisnickoIme','$prezimeKorisnika', '$korIme', '$emailKorisnika', '$lozinkaKorisnika', '$sha1lozinka', '$token', '$registracija', 1, 3 )";
        $rezultat=$veza->updateDB($sql);
        mail($emailKorisnika, "Aktivacija korisnickog računa", "barka.foi.hr/WebDiP/2019x141/WebDiP2019x141/php/provjeraAktivacije.php?token=$token&korIme=$korIme");
    }
}


?>