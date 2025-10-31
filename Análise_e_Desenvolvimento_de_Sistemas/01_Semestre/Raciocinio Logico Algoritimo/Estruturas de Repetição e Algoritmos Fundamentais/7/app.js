var x = parseInt(prompt(""))
var t1 = 0
var t2 = 1
var t3 
var soma = 0

if(x >= 0){
    document.write(t1+" ")
}
if(x >= 1){
    document.write(t2+" ")
    soma = soma + t2
}

for(i=0; i<x; i++){
    t3 = t1 + t2
    document.write(t3+" ")
    soma = soma + t3
    t1 = t2
    t2 = t3
}