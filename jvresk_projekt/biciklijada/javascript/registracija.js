$(document).ready(function () {

    var gumb = $('#submit');
    $(gumb).attr("disabled", "disabled");


    //provjera korisničkog imena
    var zastavicaKorisnicko=false;
    var korime = $('#korime');
    $(korime).keyup(function () {
        var korisnickoIme = $(korime).val();
        $.ajax({
            url: '../php/provjera_korime.php',
            method: 'POST',
            data: { korime: korisnickoIme },
            success: function (result) {
                console.log(result);
                if (result === 'ok') {
                    zastavicaKorisnicko=true;
                } else {
                    alert("Korisnik s tim korisničkim imenom već postoji");
                    zastavicaKorisnicko=false;
                }
            },
            error: function (error) {
                console.log(error);
            }
        });
        provjeriZastavice();
    });


    //validacija klijent(1)_ime
    var zastavicaIme = false;
    var poljeIme = $('#imeKorisnika');
    $(poljeIme).keyup(function () {
        var vrijednostIme = $(poljeIme).val();
        console.log(vrijednostIme);
        var rePattern = new RegExp(/^[A-Z]{1}[a-z]{2,}$/);
        if (rePattern.test(vrijednostIme)) {
            var ok = true;
        }

        if (!ok) {
            console.log("krivo");
            $("#imeKorisnika").attr("style", "border-color:red");
            zastavicaIme = false;

        } else {
            console.log("dobro");
            $("#imeKorisnika").attr("style", "border-color:green");
            zastavicaIme = true;
        }
        provjeriZastavice();

    });

    //validacija klijent(2)_prezime
    var zastavicaPrezime = false;
    var poljePrezime = $('#prezime');
    $(poljePrezime).keyup(function () {
        var vrijednostPrezime = $(poljePrezime).val();
        console.log(vrijednostPrezime);
        var rePattern = new RegExp(/^([A-Z]){1}[a-z\W]{2,}$/);
        var rePattern2 = new RegExp(/^([A-Z]){1}([a-z\W]){2,}([ ]){1}([A-Z]){1}([a-z\W]){2,}$/);
        if (rePattern.test(vrijednostPrezime) || rePattern2.test(vrijednostPrezime)) {
            var ok = true;
        }

        if (!ok) {
            console.log("krivo");
            $("#prezime").attr("style", "border-color:red");
            zastavicaPrezime = false;

        } else {
            console.log("dobro");
            $("#prezime").attr("style", "border-color:green");
            zastavicaPrezime = true;
        }
        provjeriZastavice();

    });

    //validacija klijent(3)_email
    var zastavicaEmail = false;
    var poljeEmail = $('#email');
    $(poljeEmail).keyup(function () {
        var vrijednostEmail = $(poljeEmail).val();
        console.log(vrijednostEmail);
        var rePattern = new RegExp(/^([a-zA-Z0-9\S]){5,}([@]){1}([a-zA-Z0-9\S]){3,}([.]){1}([a-z]){2,3}$/);
        if (rePattern.test(vrijednostEmail)) {
            var ok = true;
        }

        if (!ok) {
            console.log("krivo");
            $("#email").attr("style", "border-color:red");
            zastavicaEmail = false;

        } else {
            console.log("dobro");
            $("#email").attr("style", "border-color:green");
            zastavicaEmail = true;
        }
        provjeriZastavice();

    });

    //validacija klijent (4)_lozinka
    var zastaviceLozinka = false;
    var poljeLozinka = $('#lozinka');
    $(poljeLozinka).keyup(function () {
        var vrijednostLozinka = $(poljeLozinka).val();
        console.log(vrijednostLozinka);
        var rePattern = new RegExp(/^([a-zA-Z0-9\S]){4,8}$/);
        if (rePattern.test(vrijednostLozinka)) {
            var ok = true;
        }

        if (!ok) {
            console.log("krivo");
            $("#lozinka").attr("style", "border-color:red");
            zastaviceLozinka = false;

        } else {
            console.log("dobro");
            $("#lozinka").attr("style", "border-color:green");
            zastaviceLozinka = true;
        }
        provjeriZastavice();

    });

    //validacija klijent (5)_ponovljena lozinka
    var zastavicaPonovljenaLozinka = false;
    var ponovljenaLozinka = $('#potvrda');
    var poljeLozinka = $('#lozinka');
    $(ponovljenaLozinka).keyup(function () {
        var vrijednostLozinka = $(poljeLozinka).val();
        var vrijednostPonovljena = $(ponovljenaLozinka).val();
        console.log(vrijednostLozinka);
        console.log(vrijednostPonovljena);

        if (vrijednostLozinka == vrijednostPonovljena) {
            var ok = true;
        }

        if (!ok) {
            console.log("krivo");
            $("#potvrda").attr("style", "border-color:red");
            zastavicaPonovljenaLozinka = false;

        } else {
            console.log("dobro");
            $("#potvrda").attr("style", "border-color:green");
            zastavicaPonovljenaLozinka = true;
        }
        provjeriZastavice();

    });

    function provjeriZastavice() {
        var upit=zastavicaIme && zastavicaPrezime && zastaviceLozinka && zastavicaEmail && zastavicaPonovljenaLozinka;
        console.log(upit);
        if (upit) {
            $(gumb).removeAttr("disabled");
        } else {
            $(gumb).attr("disabled");
        }
    }

});