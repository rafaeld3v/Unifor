var n = 10 // escolher tamanho do vetor
var array = []

// criar vetor
for (i = 0; i < n; i++) {
    var x = Math.round(Math.random() * 100)
    array.push(x)
}

// Bubble Sort Function
function bubble_sort(a) {
    var antes = performance.now();
    var swapp;
    var n = a.length - 1;
    do {
        swapp = false;
        for (var i = 0; i < n; i++) {
            if (a[i] > a[i + 1]) {
                var temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = temp;
                swapp = true;
            }
        }
        n--;
    } while (swapp);
    var duracao = (performance.now() - antes);
    console.log("duracao: ", duracao)
    return {a, duracao};
}

// Insertion Sort Function
var insertion_sort = function (array) {
    var antes = performance.now();
    for (var i = 1; i < array.length; i++) {
        for (var j = 0; j < i; j++) {
            if (array[i] < array[j]) {
                var temp = array.splice(i, 1);
                array.splice(j, 0, temp[0])
            }
        }
    }
    var duracao = (performance.now() - antes);
    console.log("duracao: ", duracao)
    return {array, duracao};
}

// Quick Sort Function
function quick(vetor, left, right) {
    var antes = performance.now();
    var pivo = left; //depois testar com Math.floor((left + right) / 2), que vai ser a posição mais central do vetor;
    if (left < right) {
        var pivoIndex = quebra(vetor, left, right, pivo);

        quick(vetor, left, pivoIndex - 1);
        quick(vetor, pivoIndex + 1, right);
    }
    var duracao = (performance.now() - antes);
    console.log("duracao: ", duracao)
    return {vetor, duracao};
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

// chamar função de cadar algoritmo
console.log(array)
console.log(bubble_sort(array))
console.log(insertion_sort(array))
console.log(quick(array))