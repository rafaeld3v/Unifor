var valora = parseInt(prompt("Digite o valor de A: "));
var valorb = parseInt(prompt("Digite o valor de B: "));
var valorc = parseInt(prompt("Digite o valor de C: "));

var quadradodeb = valorb * valorb;

var delta = quadradodeb - 4 * (valora * valorc);

if(delta < 0){
    document.write("Não é possível calcular pois o Delta é menor que zero.");
}
if(delta == 0){
    document.write("O Delta é zero, portando os valores de X1 e X2 serão iguais.<br>");
}

var valordebneg = valorb * (-1);  
var raizdedelta = Math.sqrt(delta);
var divisor = 2 * valora;

var resultadox1 = (valordebneg + raizdedelta) / divisor;
var resultadox2 = (valordebneg - raizdedelta) / divisor;


document.write("∆ = B² - 4 X A X C<br>");
document.write("∆ = " + quadradodeb + " - 4 X " + valora + " X " + valorb);
document.write("<br>∆ = " + delta);

document.write("<br>X = -B +ou- √∆ <br>__________________<br>      2 X A");
document.write("<br> X = " + valordebneg + " +ou- " + raizdedelta + "<br>____________________<br>      2 X " + valora);
document.write("<br><br>X1 = " + quadradodeb + " + " + raizdedelta + " / " + divisor);
document.write("<br>X1 = " +resultadox1);

document.write("<br><br>X2 = " + quadradodeb + " - " + raizdedelta + " / " + divisor);
document.write("<br>X2 = " +resultadox2);