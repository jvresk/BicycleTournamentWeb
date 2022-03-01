$(document).ready(function () {
    
    $('#submit1').click(function(event){
        event.preventDefault();
        
        var grad = $("#grad").val();
        var drzava=$("#drzava").val();
        var moderator = $("#moderator").val();
        
        console.log(grad, drzava, moderator);
        
        $.ajax({
            url: './php/administrator_unos.php',
            method: 'POST',
            dataType: 'json',
            data: {Grad:grad, Drzava:drzava, Moderator:moderator},
            
            success: function(json){
                console.log(json);
            }
            
        });
        

    });

    $('#submit2').click(function(event){
        event.preventDefault();
        
        var biciklijada = $("#biciklijada2").val();
        var startnina=$("#startnina").val();
        var brnat = $("#brnat").val();
        var pocetak = $("#pocetak").val();
        
        console.log(biciklijada, startnina, brnat, pocetak);
        
        $.ajax({
            url: './php/administrator_unos.php',
            method: 'POST',
            dataType: 'json',
            data: {Biciklijada:biciklijada, Startnina:startnina, Brnat:brnat, Pocetak:pocetak},
            
            success: function(json){
                console.log(json);
            }
            
        });
        

    });
});