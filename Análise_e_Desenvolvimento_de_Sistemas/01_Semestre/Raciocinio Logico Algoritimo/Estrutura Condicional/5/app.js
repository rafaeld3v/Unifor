let n1 = parseFloat(prompt("Digite o primeiro numero: "))
let n2 = parseFloat(prompt("Digite o segunda numero: "))
let n3 = parseFloat(prompt("Digite o terceiro numero: "))
let n4 = parseFloat(prompt("Digite o quarto numero: "))

if(n4 > n3 && n4 > n2 && n4 > n1){

    document.write(n4+" ", n3+" ", n2+" ", n1)

}else if(n4 > n2 && n4 < n3 && n4 > n1){

    document.write(n3+" ", n4+" ", n2+" ", n1)

}else if(n4 > n1 && n4 < n2 && n4 < n3){

    document.write(n3+" ", n2+" ", n4+" ", n1)

}else if(n4 < n1 && n4 < n2 && n4 < n3){
    
    document.write(n3+" ", n2+" ", n1+" ", n4)
}