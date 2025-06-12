let qd = parseFloat(prompt('Digite a quantidade de dinheiro em reais:'))
let dolar = (qd / 4.33)
let libras = (qd / 5.62)
let ienes = (qd / 0.039)

document.write("A quantidade de dinheiro em dolares é: $", dolar.toFixed(2), "<br>")
document.write("A quantidade de dinheiro em libras é: £", libras.toFixed(2), "<br>")
document.write("A quantidade de dinheiro em ienes é: ¥", ienes.toFixed(2), "<br>")