$(document).ready(function () {
    

    $('#odustani').click(function(event){
        event.preventDefault();
        var id_utrke=$("#id_utrke2").val();
        var razlog=$("#razlog").val();
        console.log(id_utrke);
        console.log(razlog);
        
        
        $.ajax({
            url: './php/registrirani_odustani.php',
            method: 'POST',
            dataType: 'json',
            data: {ID_utrke:id_utrke, Razlog:razlog},
            
            success: function(json){
                console.log(json);
            }
            
        });
        

    });
});


