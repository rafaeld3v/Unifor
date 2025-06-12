var n = parseInt(prompt("Digite um numero: "))
var i = 1
var nfat = 1

while(i <= n){
    nfat = nfat * i
    i++
}
document.write("O fatoria é "+nfat)