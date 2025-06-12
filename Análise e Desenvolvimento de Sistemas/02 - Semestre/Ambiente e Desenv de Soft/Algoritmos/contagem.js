let rl = require('readline');

let leitor = rl.createInterface({
    input: process.stdin,
    output: process.stdout,
});

leitor.question('Insira um número: ', function(x){
    let y = parseInt(x);
    console.log(`Existe ${y} valores entre 1 e ${y}`);
}); 