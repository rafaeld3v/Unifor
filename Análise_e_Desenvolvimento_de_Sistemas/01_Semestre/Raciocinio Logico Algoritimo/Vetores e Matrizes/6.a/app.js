var matriz = [[],[],[]]
var pares = 0
var resto = 0
var soma = 0
var media = 0

for(var i=0; i < 3; i++){
    for(var j=0; j < 4; j++){
        matriz[i].push(Math.round(Math.random() * 10))
        resto = matriz[i] % 2
        soma += matriz[i][j]
        media = soma/12
    }
}

console.log(matriz)
console.log("A media dos elementos é: "+media)