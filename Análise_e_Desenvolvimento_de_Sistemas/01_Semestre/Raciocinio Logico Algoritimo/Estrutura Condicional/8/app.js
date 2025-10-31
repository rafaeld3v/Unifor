let menu = parseInt(prompt("Digete 1 para somar dois numeros ou 2 para tirar a raiz quadrada de um numero:"))

if(menu == 1){
    let n1 = parseFloat(prompt("Digite o primeiro numero: "))
    let n2 = parseFloat(prompt("Digite o segundo numero: "))
    let soma = n1 + n2
    document.write("O valor da soma é: ", soma)

}else if(menu == 2){
    let n = parseFloat(prompt("Digite um numero: "))
    let raiz = Math.sqrt(n)
    document.write("A raiz quadrada do numero é: ", raiz)
}