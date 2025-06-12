var qnotas = parseFloat(prompt("Digite as quantidades de notas dos alunos: "))
var aprovados = 0
for(i=0; i<=qnotas; i++){
    var notas = parseFloat(prompt("Digite as notas dos alunos: "))
    if(notas >= 6){
        aprovados++
    }
}
document.write("A quantidade de alunos aprovados são: ",aprovados)