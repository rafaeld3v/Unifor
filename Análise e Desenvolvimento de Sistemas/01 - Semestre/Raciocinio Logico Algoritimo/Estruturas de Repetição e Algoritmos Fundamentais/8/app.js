var numero = parseInt (prompt ("Digite um número inteiro!"));

var inverter = 0;
var resto = 0;

for (let i = 1; numero > 0 ; i++) {
    resto = numero % 10;
    inverter = inverter * 10 + resto;
    numero = Math.trunc(numero / 10);
}

document.write ("O número invertido é " + inverter + "<br>");