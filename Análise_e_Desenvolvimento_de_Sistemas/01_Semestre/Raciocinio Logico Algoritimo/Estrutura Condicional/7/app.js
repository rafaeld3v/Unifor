let i = parseInt(prompt("Digite o valor de I:"))
let a = parseFloat(prompt("Digite o valor de a:"))
let b = parseFloat(prompt("Digite o valor de b:"))
let c = parseFloat(prompt("Digite o valor de c:"))

let n1 = a
let n2 = b
let n3 = c

/* let Crescente = [a, b, c]

function ordenaNumber(a, b){
    return a - b
}
if(i == 1){
    Crescente.sort(ordenaNumber)
    for(i=0; i<Crescente.length; i++){
        document.write(Crescente[i] + "  ")
    }
}else if(i == 2){
    Crescente.sort(ordenaNumber)
    Crescente.reverse(ordenaNumber)
    for(i=0; i<Crescente.length; i++){
        document.write(Crescente[i] + "  ")
    }
} */

// ordem crescente
if(i === 1){
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
}

// ordem decrescente
if(i === 2){
    if(n1 >= n2 && n2 >= n3 && n1 >= n3){
        document.write(n1+" ", n2+" ", n3)
    }else if(n1 >= n3 && n3 >= n2 && n1 >= n2){
        document.write(n2+" ", n3+" ", n1)
    }else if(n2 >= n1 && n1 >= n3 && n2 >= n3){
        document.write(n2+" ", n1+" ", n3)
    }else if(n2 >= n3 && n3 >= n1 && n2 >= n1){
        document.write(n2+" ", n3+" ", n1)
    }else if(n3 >= n1 && n1 >= n2 && n3 >= n2){
        document.write(n3+" ", n1+" ", n2)
    }else if(n3 >= n2 && n2 >= n1 && n3 >= n1){
        document.write(n3+" ", n2+" ", n1)
        }
    }

// maior numero ficara no meio
if(i === 3){
    if(n1 >= n2 && n2 >= n3 && n1 >= n3){
        document.write(n2+" ", n1+" ", n3)
    }else if(n1 >= n3 && n3 >= n2 && n1 >= n2){
        document.write(n2+" ", n1+" ", n3)
    }else if(n2 >= n1 && n1 >= n3 && n2 >= n3){
        document.write(n1+" ", n2+" ", n3)
    }else if(n2 >= n3 && n3 >= n1 && n2 >= n1){
        document.write(n3+" ", n2+" ", n1)
    }else if(n3 >= n1 && n1 >= n2 && n3 >= n2){
        document.write(n1+" ", n3+" ", n2)
    }else if(n3 >= n2 && n2 >= n1 && n3 >= n1){
        document.write(n2+" ", n3+" ", n1)
        }
    }