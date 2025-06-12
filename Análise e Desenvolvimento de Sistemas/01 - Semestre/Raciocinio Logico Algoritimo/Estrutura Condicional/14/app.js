sa = parseFloat(prompt("Digite o salario atual: "))

if(sa <= 500){
    bonificacao = sa * 0.05
    novosalario = (sa + 150 + bonificacao)
    document.write('Seu novo salario é: R$',novosalario)

}else if(sa > 500 && sa <= 1200){
    bonificacao = sa * 0.12
    novosalario = (sa + 100 + bonificacao)
    document.write('Seu novo salario é: R$',novosalario)

}else if(sa > 1200){
    novosalario = (sa + 100)
    document.write('Seu novo salario é: R$',novosalario)
}