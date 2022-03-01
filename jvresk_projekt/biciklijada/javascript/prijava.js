$(document).ready(function () {

    var korime = $('#korime');
    var lozinka=$('#lozinka');
    var gumb=$('#gumb');
    var brojac=0;
    
    $(gumb).click(function (e) {
        e.preventDefault();
        var korisnickoIme = $(korime).val();
        var Lozinka=$(lozinka).val();

        $.ajax({
            url: '../php/validacija_prijave.php',
            method: 'POST',
            data: { korime: korisnickoIme, lozinka: Lozinka},
            success: function (result) {
                console.log(result);
                if (result === "error") {
                    alert("Pogrešni podaci!");
                    brojac++;
                    if(brojac>=3){
                        blokiraj(korisnickoIme);
                    }
                } else {
                    
                    //alert("Uspješna prijava!");
                    window.location = ('../index.php');
                    if ($("#zapamti").is(":checked")){
                        document.cookie = "Ime=" + korisnickoIme + ";" + "path=/";
                        
                    }else{
                       window.location = ('../index.php');
                    }
                    
                }
            },
            error: function (error) {
                console.log(error);
            }
        });
    });
});

function blokiraj(korisnickoIme){
    console.log(korisnickoIme);
    $.ajax({
        url:'../php/blokiraj_korisnika.php',
        method: 'POST',
        data: {korime: korisnickoIme}
        
    })

}