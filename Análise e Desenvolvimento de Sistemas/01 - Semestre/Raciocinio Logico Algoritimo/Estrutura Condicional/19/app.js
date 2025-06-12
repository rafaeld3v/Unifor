let altura = parseFloat(prompt("Digite sua altura em metros."))
let peso = parseFloat(prompt("Digite seu peso em kg."))

if(altura < 1.20 && peso < 60){
    document.write("Sua categoria é: A")
}else if(altura < 1.20 && peso >= 60 && peso <= 90){
    document.write("Sua categoria é: D")
}else if(altura < 1.20 && peso > 90){
    document.write("Sua categoria é: G")

}else if(altura >= 1.20 && altura <= 1.70 && peso < 60){
    document.write("Sua categoria é: B")
}else if(altura >= 1.20 && altura <= 1.70 && peso >= 60 && peso <= 90){
    document.write("Sua categoria é: E")
}else if(altura >= 1.20 && altura <= 1.70 && peso > 90){
    document.write("Sua categoria é: B")

}else if(altura > 1.70 && peso < 60){
    document.write("Sua categoria é: C")
}else if(altura > 1.70 && peso >= 60 && peso <= 90){
    document.write("Sua categoria é: F")
}else if(altura > 1.70 && peso > 90){
    document.write("Sua categoria é: C")
}