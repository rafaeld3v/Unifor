let n = parseInt(prompt("Digite um numero inteiro:"))
let verificacao = n % 2

if(verificacao == 0){
    document.write("O numero ", n," é par.")
}else{
    document.write("O numero ", n," é impar.")
}