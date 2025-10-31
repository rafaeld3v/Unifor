var qn = parseInt(prompt("Digite a quantidade de numeros:"))
var n = 1
var m = 1
function modulo(x){
    saida = x
    if(x<0){
        saida = x*-1
    }
    return saida
}
for(i=0; i<=qn; i++){
        document.write(n+"<br>")
        m = m*-1
        n = (modulo(n)+ 2)*m
}