let rl = require('readline');

let leitor = rl.createInterface({
    input: process.stdin,
    output: process.stdout,
});

leitor.question('Insira dois números inteiros: ', (x) => {
    leitor.question('Insira dois números inteiros: ', (y) => {
    let num = parseInt(x);
    let num2 = parseInt(y);
    console.log(mdc(x, y));
})
});

function mdc(a, b) {
    while (b !== 0) {
        var r = a % b;
        a = b;
        b = r;
    }
    return a;
}