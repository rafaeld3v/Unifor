var matriz = [[],[],[]]
var pares = 0
var resto = 0
var soma = 0

for(var i=0; i < 3; i++){
    for(var j=0; j < 4; j++){
        matriz[i].push(Math.round(Math.random() * 10))
        resto = matriz[i] % 2
        if(resto == 0){
            pares++
        }else{
            soma += matriz[i][j]
        }
    }
}

console.log(matriz)
console.log("A quantidade de elementos pares são: "+pares)
console.log("A soma dos elementos impares é: "+soma)