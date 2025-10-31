let hora = parseInt(prompt("Digite a hora: "))
let min = parseInt(prompt("Digite o minuto: "))
let dia = parseInt(prompt("Digite o dia: "))
let mes = parseInt(prompt("Digite o mes: "))
let ano = parseInt(prompt("Digite o ano: "))

if(mes == 1){
    let mesdoano = "Janeiro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)
}else if(mes == 2){
    let mesdoano = "Fevereiro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)
}else if(mes == 3){
    let mesdoano = "Março"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 4){
    let mesdoano = "Abril"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 5){
    let mesdoano = "Maio"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 6){
    let mesdoano = "Junho"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 7){
    let mesdoano = "Julho"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 8){
    let mesdoano = "Agosto"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 9){
    let mesdoano = "Setembro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 10){
    let mesdoano = "Outubro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 11){
    let mesdoano = "Novembro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else if(mes == 12){
    let mesdoano = "Dezembro"
    document.write(dia + '/' + mes + "/" + ano + " - " + mesdoano + " "+ hora + ":"+ min)

}else{
    document.write("Erro... a data ou hora digitada nao e valida.")
}