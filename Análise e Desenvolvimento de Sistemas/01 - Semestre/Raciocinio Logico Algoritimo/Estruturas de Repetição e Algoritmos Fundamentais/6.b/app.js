var n = parseInt(prompt("Digite um numero: "))
var i = 1
var nfat = 1
var cont = 0
var efat = false


var fatorial = function(n){
    var nfat = 1;
    for(i=1; i<=n; i++){
      nfat = nfat *i;
    }
    return nfat
}

while(cont <= n){
    if(fatorial(i) == n){
        efat = true
    }
    cont++,i++
}
document.write(efat)