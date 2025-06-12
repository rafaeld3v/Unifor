var i = 0
var aprovados = 0
while(i == 0){
    if(notas == -1){
        break
    }else{
    var notas = parseFloat(prompt("Digite as notas dos alunos: "))
    if(notas >= 6){
        aprovados++
    }}
}
document.write("A quantidade de alunos aprovados são: ",aprovados)