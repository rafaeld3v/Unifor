function retonarMaior(vetor){
    maior = lista[0]

    for(i=0; i < vetor.length; i++){
        if(vetor[i] >= maior){
            maior = vetor[i]
        }
    }
    return maior ;
}

function retonarMenor(vetor){
    maior = lista[0]

    for(i=0; i < vetor.length; i++){
        if(vetor[i] <= maior){
            menor = vetor[i]
        }
    }
    return menor ;
}

var lista = [1,4,8,6,12,35,0,37,40,9,8,3,4]

var x = retonarMaior(lista)
var y = retonarMenor(lista)

document.write("O maior numero é :",x,"<br>")
document.write("O menor numero é :",y)