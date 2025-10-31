let n1 = parseFloat(prompt("Digite a primeira nota: "))
let n2 = parseFloat(prompt("Digite a segunda nota: "))
let n3 = parseFloat(prompt("Digite a terceira nota: "))

let media = ((n1 + n2 + n3) / 3)
document.write("Sua media é: ", media," // ")

if(media >= 0 && media <= 3){
    document.write("REPROVADO")
}else if(media >= 3 && media <= 7){
    document.write("EXAME // ")
    notafinal = 7 - media
    document.write("A nota que devera tirar para ser aprovado é: ", notafinal)
}else{
    document.write("APROVADO")
}

