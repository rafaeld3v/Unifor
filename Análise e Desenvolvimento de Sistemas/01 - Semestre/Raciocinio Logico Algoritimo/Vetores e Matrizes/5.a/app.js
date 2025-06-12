var matrizR = [[],[],[]]
var matrizS = [[],[],[]]
var matrizT = [[],[],[]]

for(var i = 0; i < 3 ; i++){
    for(var j = 0; j < 8 ; j++){
        matrizR[i].push(Math.round(Math.random()*50));
    }   
}

for(var i = 0; i < 3 ; i++){
    for(var j = 0; j < 8 ; j++){
        matrizS[i].push(Math.round(Math.random()*50));
    }   
}

for(var i=0; i < matrizR.length; i++){
    matrizT[i].push(matrizR[i] + matrizS[i])
}

console.log(matrizT)