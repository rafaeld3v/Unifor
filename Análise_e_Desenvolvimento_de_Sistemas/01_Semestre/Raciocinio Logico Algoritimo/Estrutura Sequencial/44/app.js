let d1 = parseFloat(prompt('Digite a primeira dimensão do comodo em metros:'))
let d2 = parseFloat(prompt('Digite a segunda dimensão do comodo em metros:'))
let area = (d1 * d2)
let iluminacao = (area * 18)

document.write("A area do comodo é:", area, "m^2.<br>")
document.write("A potencia de iluminação é:", iluminacao, "W.<br>")