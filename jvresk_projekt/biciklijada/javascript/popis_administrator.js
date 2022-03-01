$(document).ready(function (){
    $.ajax({
        url: './php/popis_administrator.php',
        dataType: 'json',
        method: 'GET',
        success: function(json){
            var table=document.getElementById('table');
            console.log(json);

            json.forEach(utrka => {
                var tr=document.createElement('tr');

                var grad=document.createElement('td');
                grad.innerHTML=utrka.lokacija;

                
                var zavrsetak=document.createElement('td');
                zavrsetak.innerHTML=utrka.zavrsetak;

                
                tr.append(grad);
                
                tr.append(zavrsetak);
                
                
                
                table.append(tr);

                
            });
        }
    })
})