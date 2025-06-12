var alunos = []
var notas = []
var estudantes = parseInt(prompt("Digite a quantidade de estudantes: "))

for(i=0; i<estudantes; i++){
    var nota = parseInt(prompt("Digite a nota: "))
    var indice = i + 1
    alunos.push(indice)
    notas.push(nota)
    document.write("O estudante "+alunos[i]+" tirou a nota "+notas[i]+"<br>")
}