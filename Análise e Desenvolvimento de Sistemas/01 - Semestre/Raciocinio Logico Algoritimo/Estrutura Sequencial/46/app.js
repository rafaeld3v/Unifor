let horastrabalhadas = parseFloat(prompt('Digite o numero de horas trabalhadas:'))
let salariominimo = parseFloat(prompt('Digite o valor do salario minimo:'))
let horasextras = parseFloat(prompt('Digite o numero de horas extras:'))
// item a
let ht = horastrabalhadas * (salariominimo/8)
// document.write("O valor das horas trabalhadas é: R$", ht, ".<br>")
// item b
let he = horasextras * (salariominimo/4)
// document.write("O valor das horas extras trabalhadas é: R$", he, ".<br>")
// item c
let salariobruto = ht
document.write("O salario bruto é: R$", salariobruto, ".<br>")
// item d
let quantiahe = he
document.write("A quantia a receber pelas horas extras é:", quantiahe, ".<br>")
// item e
let salariofinal = ht + he
document.write("O salário a receber é:", salariofinal, ".<br>")