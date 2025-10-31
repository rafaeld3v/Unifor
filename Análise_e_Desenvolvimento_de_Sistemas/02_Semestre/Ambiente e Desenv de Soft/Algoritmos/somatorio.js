let rl = require('readline');

let array;

let leitor = rl.createInterface({
  input: process.stdin,
  output: process.stdout
});

leitor.question('Insira seus números separados por vírgula(,): ', entrada => {
  let aux = to_a(entrada).reduce((soma, elemento) => soma += elemento);

  console.log(aux);
});

const to_a = str => str.split(',').map(num => parseFloat(num));