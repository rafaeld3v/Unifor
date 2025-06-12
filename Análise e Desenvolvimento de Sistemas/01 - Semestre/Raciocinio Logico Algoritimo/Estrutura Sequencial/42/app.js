let r = parseFloat(prompt("Digite o valor do raio da circuferencia em cm: "))
// item a
let comprimento = (2 * Math.PI * r)
document.write("O comrpimento da cirfcuferencia é: ", comprimento," cm.<br>")
// item b
let area = (Math.PI * Math.pow(r, 2))
document.write("A area da cirfcuferencia é: ", area," cm.<br>")
// item c
let volume = (3/4 * Math.PI * Math.pow(r, 3))
document.write("O volume da esfera é: ", volume," cm.<br>")