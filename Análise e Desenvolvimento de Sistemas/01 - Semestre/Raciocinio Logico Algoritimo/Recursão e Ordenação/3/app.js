var n = 100
var vetor = []

for(i=0; i < n; i++){
    var x = Math.round(Math.random() * 100)
    vetor.push(x)
}

var insertion_sort = function (array) {
    for (var i = 1; i < array.length; i++) {
        for (var j = 0; j < i; j++) {
            if (array[i] < array[j]) {
                var temp = array.splice(i, 1);
                array.splice(j, 0, temp[0])
            }
        }
    }
    return array;
}

console.log(insertion_sort(vetor))