let angulo = parseFloat(prompt('Digite a medida do angulo:'))
let dist = parseFloat(prompt('Digite a medida da distancia da escada ate a parede:'))
let radiano = (angulo * (Math.PI)) / 180
let hipotenusa = dist / Math.sin(radiano)

document.write("A medida para que se possa alcançar a escada é:", hipotenusa, "m.<br>")