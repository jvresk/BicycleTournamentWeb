$(document).ready(function () {

    $('#zaboravljena').click(function(event){
        event.preventDefault();
        var korime=prompt("Unesite korisničko ime:");
        

        $.ajax({
            url: '../php/nova_lozinka.php',
            method: 'POST',
            dataType: 'json',
            data: {korisnicko_ime: korime},
            success: function(json){
                console.log("da");
            }
        })

    });
});


