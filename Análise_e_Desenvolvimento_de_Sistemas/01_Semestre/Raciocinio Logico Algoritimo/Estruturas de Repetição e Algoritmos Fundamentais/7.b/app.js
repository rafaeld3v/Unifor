var num = parseInt(prompt("Digite um numero: "))
var previus = 1
var current = 3
var next 

if(num == 1)document.write(previus)
if(num == 2)document.write(previus+" "+current)
if(num > 2){
    document.write(previus+" "+current+" ");
    for(i=2; i < num; i++){
        next = previus + current
        previus = current
        current = next

        document.write(current+" ")
    }
}