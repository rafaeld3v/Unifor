let dia1 = parseInt(prompt("Digite o dia1: "))
let mes1 = parseInt(prompt("Digite o mes1: "))
let ano1 = parseInt(prompt("Digite o ano1: "))
let data1 = dia1 + "/" + mes1 + "/" + ano1 

let dia2 = parseInt(prompt("Digite o dia2: "))
let mes2 = parseInt(prompt("Digite o mes2: "))
let ano2 = parseInt(prompt("Digite o ano2: "))
let data2 = dia2 + "/" + mes2 + "/" + ano2

if(ano1 > ano2){
    document.write(data2, "  ", data1)
}else if(ano2 > ano1){
    document.write(data1, "  ", data2)

}else if(mes2 > mes1){
    document.write(data1, "  ", data2)
}else if(mes1 > mes2){
    document.write(data2, "  ", data1)

}else if(dia2 > dia1){
    document.write(data1, "  ", data2)
}else if(dia1 > dia2){
    document.write(data2, "  ", data1)
}