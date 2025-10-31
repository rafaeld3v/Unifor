codigo = parseInt(prompt("Digite o codigo do funcionario: "))
sa = parseFloat(prompt("Digite o salario atual: "))

if(codigo == 1){
    document.write("Seu cargo é Escrituario.<br>")
    va = (sa * 0.5)
    document.write("Seu amento foi de : R$"+va,'<br>')
    ns = (sa + va)
    document.write('Seu novo salario é: R$',ns)

}else if(codigo == 2){
    document.write("Seu cargo é Secretario.<br>")
    va = (sa * 0.35)
    document.write("Seu amento foi de : R$"+va,'<br>')
    ns = (sa + va)
    document.write('Seu novo salario é: R$',ns)

}else if(codigo == 3){
    document.write("Seu cargo é Caixa.<br>")
    va = (sa * 0.20)
    document.write("Seu amento foi de : R$"+va,'<br>')
    ns = (sa + va)
    document.write('Seu novo salario é: R$',ns)

}else if(codigo == 4){
    document.write("Seu cargo é Gerente.<br>")
    va = (sa * 0.1)
    document.write("Seu amento foi de : R$"+va,'<br>')
    ns = (sa + va)
    document.write('Seu novo salario é: R$',ns)

}else if(codigo == 5){
    document.write("Seu cargo é Diretor.<br>")
    va = "sem aumento"
    document.write("Seu amento foi de : "+va,'<br>')
    ns = (sa)
    document.write('Seu novo salario é: R$',ns)
}