var m = [[],[],[]]
var int = 0

for(var i = 0; i < 3 ; i++){
    for(var k = 0; k < 8 ; k++){
        m[i].push(Math.round(Math.random()*50));
    }   
}

console.log(m)