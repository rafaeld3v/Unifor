let n1 = parseFloat(prompt("Digite o primeiro numero: "))
let n2 = parseFloat(prompt("Digite o segunda numero: "))
let n3 = parseFloat(prompt("Digite o terceiro numero: "))

// ordem crescente
if(n1 >= n2 && n2 >= n3 && n1 >= n3){
    document.write(n3+" ", n2+" ", n1)
}else if(n1 >= n3 && n3 >= n2 && n1 >= n2){
    document.write(n2+" ", n3+" ", n1)
}else if(n2 >= n1 && n1 >= n3 && n2 >= n3){
    document.write(n3+" ", n1+" ", n2)
}else if(n2 >= n3 && n3 >= n1 && n2 >= n1){
    document.write(n1+" ", n3+" ", n2)
}else if(n3 >= n1 && n1 >= n2 && n3 >= n2){
    document.write(n2+" ", n1+" ", n3)
}else if(n3 >= n2 && n2 >= n1 && n3 >= n1){
    document.write(n1+" ", n2+" ", n3)
}