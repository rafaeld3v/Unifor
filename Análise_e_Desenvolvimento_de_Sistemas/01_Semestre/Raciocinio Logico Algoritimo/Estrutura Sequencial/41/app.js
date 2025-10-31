let c1 = parseFloat(prompt("Digite o valor do cateto 1: "))
let c2 = parseFloat(prompt("Digite o valor do cateto 2: "))

let hipotenusa = (Math.pow(c1, 2)) + (Math.pow(c2, 2))
let raizHip = Math.sqrt(hipotenusa)
document.write("O valor da hipotenusa é: ", raizHip," cm.")