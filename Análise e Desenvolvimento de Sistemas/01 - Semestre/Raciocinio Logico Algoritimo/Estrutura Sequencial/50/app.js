let h = parseFloat(prompt('Digite o valor da hora:'))
let m = parseFloat(prompt('Digite o valor do minuto:'))
// item a
let hm = h * 60
document.write("As horas convertida em minutos é: ",  hm, " minutos.<br>")
// item b
let totalminutos = m + hm 
document.write("O total de minutos é: ", totalminutos, " minutos.<br>")
// item c
let segundos = totalminutos * 60
document.write("O total de segundos é: ", segundos, " segundos.<br>")