function retonarMaior(vetor){
    maior = seila[0]

    for(i=0; i < vetor.length; i++){
        if(vetor[i] >= maior){
            maior = vetor[i]
        }
    }
    return maior ;
}

var seila = [1,4,8,6,12,35,37,40,9,8,3,4]
var x = retonarMaior(seila)
document.write("O maior numero é :",x)