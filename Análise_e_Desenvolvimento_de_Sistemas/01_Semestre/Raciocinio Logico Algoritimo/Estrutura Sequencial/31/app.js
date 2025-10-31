let salariofixo = parseFloat(prompt("Digite o salario fixo do funcionario: "))
let vendas = parseFloat(prompt("Digite o valor das vendas do funcionario: "))
let comissao = (vendas * 0.04)
let salariofinal = salariofixo + comissao 
document.write("O valor da comissao é: R$", comissao, "<br>")
document.write("O salario final é: R$", salariofinal)