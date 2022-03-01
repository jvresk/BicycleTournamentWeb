function Kolacici() {
    //čitanje kolačića
    var trazi = "Ime=";
    var kolacici = document.cookie;
    if (kolacici.length > 0) {
        pocetak = kolacici.indexOf(trazi);

        if (pocetak !== -1) {
            kolacici = kolacici.substring(pocetak + trazi.length, kolacici.length);
            kraj = kolacici.indexOf(";");
            if (kraj === -1) {
                kraj = kolacici.length;
            }
            var mojKolacic = kolacici.substring(pocetak, kraj);
            if (mojKolacic !== null || mojKolacic.length() > 0) {
                //alert("Kolačić: " );
                document.getElementById("korime").value=kolacici.split(';')[0];
               
            }
        }
    }
}

