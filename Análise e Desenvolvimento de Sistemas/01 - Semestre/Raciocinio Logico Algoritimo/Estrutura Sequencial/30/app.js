let produto = parseFloat(prompt("Digite o preço do produto: "))
let desconto = 0.10
let novopreco = produto - (produto * desconto)
document.write("O novo preço do produto é: ", novopreco)