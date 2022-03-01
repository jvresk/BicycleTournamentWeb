$(document).ready(function (){
    $.ajax({
        url: './php/popis_neregistrirani.php',
        dataType: 'json',
        method: 'POST',
        success: function(json){
            var table=$("#table tbody")
            console.log(json);

            for(var i=0; i<json.length; i++){
                table.append(
                    "<tr><td>"+ "<a href='./galerija_neregistrirani.php?id="+json[i][0]+"'>"+  json[i][1]+  "</a>"+
                    
                    "</td><td>"  + json[i][2] +  
                    "</td></tr>"
                );
            }

        }
    })
})