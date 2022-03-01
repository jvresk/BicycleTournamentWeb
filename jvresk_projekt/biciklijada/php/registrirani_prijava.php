<?php
require '../baza.class.php';



if(isset($_POST["imeBiciklista"])){

    $veza=new Baza();
    $veza->spojiDB();
    
    $ime=$_POST['imeBiciklista'];
    $prezime=$_POST['prezimeBiciklista'];
    $godina=$_POST['godina_rod'];
    $broj=$_POST['kontakt'];

    

    $sql="insert into prijava (ime, prezime, `godina_rodenja`, kontakt, Biciklist, `Racun_Racun_id`) 
        values('$ime','$prezime', '$godina', '$broj', '2', '2' )";
    $rezultat=$veza->updateDB($sql);

    echo json_encode($rezultat);
    
    $veza->zatvoriDB();

    exit();
}