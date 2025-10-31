let n1 = parseFloat(prompt("Digite a primeira nota: "))
let n2 = parseFloat(prompt("Digite a segunda nota: "))
let n3 = parseFloat(prompt("Digite a terceira nota: "))

let peso1 = 2
let peso2 = 3
let peso3 = 5

let media = (((n1 * peso1) + (n2 * peso2) + (n3 * peso3))/(2+3+5))
document.write("Sua media é:", media,"<br>")

if(media >= 8 && media <= 10){
    document.write("O conceito é: A")
}else if(media >= 7 && media <= 8){
    document.write("O conceito é: B")
}else if(media >= 6 && media <= 7){
    document.write("O conceito é: C")
}else if(media >= 5 && media <= 6){
    document.write("O conceito é: D")
}else{
    document.write("O conceito é: E")
}