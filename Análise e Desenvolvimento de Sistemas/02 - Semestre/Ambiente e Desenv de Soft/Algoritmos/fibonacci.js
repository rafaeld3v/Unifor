let rl = require('readline');

let leitor = rl.createInterface({
  input: process.stdin,
  output: process.stdout,
});

leitor.question('Quantidade de numeros da sequência: ', (entrada) => {
  console.log(fibonnaci(parseInt(entrada)));
});

const fibonnaci = (quantidade) => {
  let numAnt = 0;
  let numAtual = 1;
  let proxNum;
  let saida = '';

  if (quantidade === 1) saida = numAnt;

  if (quantidade === 2) saida = `${numAnt} ${numAtual}`;

  if (quantidade > 2) {
    saida = `${numAnt} ${numAtual} `;

    for (let i = 2; i < quantidade; i++) {
      proxNum = numAnt + numAtual;
      numAnt = numAtual;
      numAtual = proxNum;
      saida += `${numAtual} `;
    }
  }

  return saida;
};