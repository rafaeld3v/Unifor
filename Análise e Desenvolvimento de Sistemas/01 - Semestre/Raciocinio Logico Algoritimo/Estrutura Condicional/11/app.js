inicio = parseFloat(prompt("Digite a hora de inicio do jogo em numero REAL: "))
fim = parseFloat(prompt("Digite os minutos de inicio do jogo em numero REAL: "))


if(fim < inicio){
    total = ((24 - inicio) + fim)
    document.write("A duração do jogo foi: ", total)
}else if(fim > inicio){
    total = (fim - inicio)
    document.write("A duração do jogo foi: ", total)
}else if(fim == inicio){
    total = (24)
    document.write("A duração do jogo foi: ", total)
}