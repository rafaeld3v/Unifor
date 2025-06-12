var n = 100;
var array = [];

for (i = 0; i < n; i++) {
    var x = Math.round(Math.random() * 100);
    if (x <= 150) {
        array.push(x);
    }
}

var buscaLinear = (array, item) => {
    for (var i = 0; i < array.length; i++) if (array[i] === item) return true
}

console.log(array);
console.log(buscaLinear(array, 4))