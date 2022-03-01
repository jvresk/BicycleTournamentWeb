$(document).ready(function () {
    
    $.ajax({
        url: './php/registrirani_ispis_prijava.php',
        dataType: 'json',
        method: 'POST',
        success: function(rezultati){
            var table=$("#table tbody")
            console.log(rezultati);

            for(var i=0; i<rezultati.length; i++){
                table.append(
                    "<tr><td>"+ rezultati[i][0]+ "</td><td>" +rezultati[i][1]+                     
                    "</td><td>"  + rezultati[i][2] + "</td><td>"+ rezultati[i][3]+"</td></tr>"
                );
            }

        }
    })

    var imeBiciklista = $('#imeBiciklista');
    var prezimeBiciklista=$('#prezimeBiciklista');
    var godina_rod=$('#godina_rod');
    var kontakt=$('#kontakt');

    $('#submit').click(function(event){
        event.preventDefault();
        
        var ime = $(imeBiciklista).val();
        var prezime=$(prezimeBiciklista).val();
        var godina = $(godina_rod).val();
        var broj=$(kontakt).val();
        console.log(ime, prezime, godina, broj);
        
        $.ajax({
            url: './php/registrirani_prijava.php',
            method: 'POST',
            dataType: 'json',
            data: {imeBiciklista:ime, prezimeBiciklista:prezime, godina_rod:godina, kontakt:broj},
            
            success: function(json){
                console.log(json);
            }
            
        });
        

    });
});


