let rl = require('readline');

let leitor = rl.createInterface({
    input: process.stdin,
    output: process.stdout,
});

leitor.question('Insira um número: ', function(n){
    let y = parseInt(n);
    for(i=0; i < n; i++){
        var x = Math.round(Math.random() * 100)
        vetor.push(x)
    }
    console.log(quick(vetor, y));
}); 

var vetor = []

function quick(vetor, left, right) {
    var pivo = left; //depois testar com Math.floor((left + right) / 2), que vai ser a posição mais central do vetor;
    if (left < right) {
        var pivoIndex = quebra(vetor, left, right, pivo);

        quick(vetor, left, pivoIndex - 1);
        quick(vetor, pivoIndex + 1, right);
    }
    return vetor;
}

function quebra(vetor, left, right, pivo) {
    var p = vetor[pivo];
    troca(vetor, right, pivo);
    var aux = left;

    for (let i = left; i < right; i++) {
        if (vetor[i] <= p) {
            troca(vetor, i, aux);
            aux = aux + 1;
        }
    }

    troca(vetor, right, aux);
    return aux;
}

function troca(vetor, i, j) {
    let temp = vetor[i];
    vetor[i] = vetor[j];
    vetor[j] = temp;
}