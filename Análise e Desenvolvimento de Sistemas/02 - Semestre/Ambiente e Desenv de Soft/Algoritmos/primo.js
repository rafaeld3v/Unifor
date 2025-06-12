let rl = require('readline');

let leitor = rl.createInterface({
    input: process.stdin,
    output: process.stdout,
});

leitor.question('Insira um número inteiro: ', (entrada) => {
    let num = parseInt(entrada);
    console.log(primo(num) === true ? 'É primo' : 'Não é primo');
});

const primo = (n) => {
    for (let i = 2; i < n; i++) {
        let aux = n % i;

        if (aux === 0) return false;
    }

    return n > 1;
};
/*
var readline = require('readline');
var resp = "";

var leitor = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Qual módulo pra ler dados no node.js?\n", function(answer) {
    var resp = answer;
    console.log("\nSua resposta '" + resp + "' foi grava com sucesso numa variável inútil");
    leitor.close();
});
*/ 