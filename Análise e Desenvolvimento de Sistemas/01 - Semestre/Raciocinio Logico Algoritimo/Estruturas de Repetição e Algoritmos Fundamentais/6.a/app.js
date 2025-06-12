var n = parseInt(prompt("Digite um numero: "))
var i = 1
var nfat = 1

var fatorial = function(n){
while(i <= n){
    nfat = nfat * i
    i++
}
    return nfat
}

var x = 1/fatorial(n)
document.write(x)