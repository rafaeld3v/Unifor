var n = parseInt(prompt("Digite um numero inteiro: "))
var vetor = []

for(i=0; i < n; i++){
    var x = Math.random()
    vetor.push(x+"<br>")
}

document.write(vetor)