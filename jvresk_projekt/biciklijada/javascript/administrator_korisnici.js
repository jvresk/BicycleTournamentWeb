$(document).ready(function () {
    
    $.ajax({
        url: './php/administrator_korisnici.php',
        dataType: 'json',
        method: 'POST',
        success: function(rezultati){
            var table=$("#table tbody")
            console.log(rezultati);

            for(var i=0; i<rezultati.length; i++){
                table.append(
                    "<tr><td>"+ rezultati[i][0]+ "</td><td>" +rezultati[i][1]+                     
                    "</td><td>"  + rezultati[i][2] + "</td><td>"+ rezultati[i][3]+
                    "</td><td>"+ rezultati[i][4]+ "</td><td>"+ rezultati[i][5]+
                    "</td><td>"+ rezultati[i][6]+ "</td><td>"+ rezultati[i][7]+
                    "</td><td>"+ rezultati[i][8]+ "</td><td>"+ rezultati[i][9]+
                    "</td><td>"+ rezultati[i][10]+ "</td><td>"+ rezultati[i][11]+
                    "</td><td>"+ rezultati[i][12]+ "</td><td> <a id='blokiraj' href='#'> Blokiraj </a>" +    
                    "</td><td> <a id='odblokiraj' href='#'> Odblokiraj </a>" +            
                    
                    
                    "</td></tr>"
                );
            }

        }
    })
    $("#table").on('click','#odblokiraj', Odblokiraj);
    $("#table").on('click','#blokiraj', Blokiraj);

    function Odblokiraj(){
        var trenutniRed = $(this).closest("tr"); 
        var id_korisnik = trenutniRed.find("td:eq(0)").text(); 
        $.ajax({
            url: './php/odblokiraj_korisnika.php',
            dataType: 'json',
            data: {ID_korisnika: id_korisnik},
            method: 'POST',
            success: function(rezultati){
                var table=$("#table tbody")
                console.log(rezultati);
            }
        

        })
    }

    function Blokiraj(){
        var trenutniRed = $(this).closest("tr"); 
        var id_korisnik = trenutniRed.find("td:eq(0)").text(); 
        console.log(id_korisnik);
        $.ajax({
            url: './php/blokiraj_korisnika.php',
            dataType: 'json',
            data: {ID_korisnika: id_korisnik},
            method: 'POST',
            success: function(rezultati){
                var table=$("#table tbody")
                console.log(rezultati);
            }
        

        })
    }

    
});