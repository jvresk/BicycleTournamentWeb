$(document).ready(function (){
    $.ajax({
        url: './php/registrirani_rezultati.php',
        dataType: 'json',
        method: 'POST',
        success: function(rezultati){
            var table=$("#table tbody")
            console.log(rezultati);

            for(var i=0; i<rezultati.length; i++){
                table.append(
                    "<tr><td>"+ rezultati[i][0]+ "</td><td>" +rezultati[i][1]+                     
                    "</td><td>"  + rezultati[i][2] + "</td><td>"+ rezultati[i][3]+
                    "</td><td>"+ rezultati[i]['pobjednik_slika'] + "</td><td>" +rezultati[i]['suglasnost']+"</td></tr>"
                );
            }

        }
    })



    $("#submit").click(function(e){
        e.preventDefault();
        var id_utrke=$("#id_utrke").val();
        var adresa=$("#adresa").val();
        var suglasnost=$("#suglasnost").val();
        
        
        $.ajax({
            url:'./php/upload.php',
            dataType: 'json',
            data: {ID_utrke:id_utrke, Adresa:adresa, Suglasnost:suglasnost},
            method: 'POST',
            success: function(rezultati){
                alert(rezultati);
            }
        })
    })
})