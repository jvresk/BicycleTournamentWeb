<?php

require './baza.class.php';

if(isset($_GET['id'])){
    $veza=new Baza();
    $veza->spojiDB();
    $idLokacije=$_GET['id'];
    $upit="select utrka.pobjednik_slika from utrka inner join 
    lokacija on lokacija.Lokacija_id=utrka.Lokacija_id where lokacija.Lokacija_id='$idLokacije' and utrka.suglasnost=1;";
    $rezultat=$veza->selectDB($upit);

    
    $lokacije=array();
    while($lokacije=mysqli_fetch_array($rezultat)){
        echo ("<img src='$lokacije[0]' width='500px' height='300px'/>");;
    }
   

    $veza->zatvoriDB();
}

?>