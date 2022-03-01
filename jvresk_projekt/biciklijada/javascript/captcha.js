var tCtx = document.getElementById("textCanvas").getContext("2d");

function randomString(length, chars) {
var result = "";
for (var i = length; i > 0; i--) result += chars[Math.floor(Math.random() * chars.length)];
return result;
}
var rString = randomString(6,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ");
var newElem = rString;
tCtx.font = "22pt Calibri";
tCtx.fillText(newElem, 10, 30);


var captcha=$('#captcha');
$(captcha).keyup(function (){
    var captchaVrijednost=$(captcha).val();
    console.log(captchaVrijednost);
    if(captchaVrijednost===newElem){
        console.log("oke");
        $("#captcha").attr("style", "border-color:green");

    }else{
        console.log("krivo");
        $("#captcha").attr("style", "border-color:red");
    }

});

