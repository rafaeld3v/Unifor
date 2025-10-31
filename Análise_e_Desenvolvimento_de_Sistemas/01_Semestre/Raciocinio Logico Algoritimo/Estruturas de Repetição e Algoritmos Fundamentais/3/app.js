var qn = parseFloat(prompt("Digite a quantidade de nuremos: "))
var cont = 0
for(i=0; i<qn; i++){
    var n = parseFloat(prompt("Digite um numero: "))
    cont += n
}
document.write("A soma total é: ",cont)