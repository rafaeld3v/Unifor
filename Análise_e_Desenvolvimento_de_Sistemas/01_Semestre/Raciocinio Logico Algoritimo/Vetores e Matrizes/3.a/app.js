var galerao = parseInt(prompt('Quantidade de alunos do bruno: '));

var notas = [];
var replicas = [];
var subvetores = [];

for(i = 0; i < galerao; i++) {
  notas.push(parseInt(prompt('digite a nota do ' + (i+1) + 'º aluno: ')));

}

var aux = notas.filter((nota, i) => {
  if(notas.indexOf(nota) !== i) {
      replicas.push(nota);
  }
  return notas.indexOf(nota) == i;
});

aux.map(nota => {

  subvetores.push(notas.filter(copia => nota == copia));

});

document.write('Notas: '+ notas);
document.write('<br>');

var higher = 0
var mostwanted = [];

subvetores.map((item,index) => {
  if(item.length > 1){
    document.write('<br>'+item.length + ' alunos tiraram ' + aux[index]);
  } else {
    document.write('<br>'+item.length + ' aluno tirou ' + aux[index]);
  }
  if(higher < item.length) {
    higher = item.length
  }
});
subvetores.map((item,index)=> {
  if(item.length === higher) mostwanted.push(aux[index]);
});
document.write('<br>' + 'Maior repetição ' + mostwanted)