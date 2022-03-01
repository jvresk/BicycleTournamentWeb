$(document).ready(function (){
    $.ajax({
        url: './php/popis_utrka.php',
        dataType: 'json',
        method: 'POST',
        success: function(json){
            var table=document.getElementById('table2');
            console.log(json);

            json.forEach(utrka => {
                var tr=document.createElement('tr');

                var naziv=document.createElement('td');
                naziv.innerHTML=utrka.naziv;

                var broj_natjecatelja=document.createElement('td');
                broj_natjecatelja.innerHTML=utrka.broj_natjecatelja;

                var pocetak=document.createElement('td');
                pocetak.innerHTML=utrka.pocetak;

                var grad=document.createElement('td');
                grad.innerHTML=utrka.lokacija;

                tr.append(naziv);
                tr.append(grad);
                tr.append(broj_natjecatelja);
                tr.append(pocetak);
                
                table.append(tr);

                
            });
        }
    })
})