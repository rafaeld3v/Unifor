var qn = parseFloat(prompt("Digite a quantidade de nuremos: "))
var cont = 0
for(i=0; i<qn; i++){
    var n = parseFloat(prompt("Digite um numero: "))
    cont += n
}
var media = cont / qn
document.write("A soma total é:",cont,"<br>")
document.write("A media é:",media)