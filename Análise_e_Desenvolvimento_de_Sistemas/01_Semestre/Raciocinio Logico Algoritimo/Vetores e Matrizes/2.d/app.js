const vetor = [0,1,2,3,4,5,6]
var maximo = 0
var minimo = 0
var posicao = 0

for(var i=0; i<vetor.length; i++){
    if(vetor[i] > maximo) {
        maximo = vetor[i] 
    }
    if(vetor[i] < minimo){
        minimo = vetor[i]
    }
}
console.log("O valor de maximo é: "+maximo)
console.log("O valor de minimo é: "+minimo)
var posicaomax = vetor.indexOf(maximo)
var posicaomin = vetor.indexOf(minimo)
console.log("A posicao de maximo é: "+posicaomax)
console.log("A posicao de minimo é: "+posicaomin)