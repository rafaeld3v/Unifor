// Atividade 1
function capsLock() {
    let texto = document.getElementById('cx_texto').value.toUpperCase();
    document.getElementById('cx_texto').value = texto;
}

// Atividade 2
function verificarSenha() {
    let senha = document.getElementById('senha').value;
    let senha_repeat = document.getElementById('senha_repeat').value;

    (senha == senha_repeat) ? alert("Senhas iguais") : alert("Senhas diferentes");
}

// Atividade 3
function calcular(caixa) {
    let x = parseInt(document.getElementById('x').value);
    let y = parseInt(document.getElementById('y').value);
    let result = document.getElementById('result');
    
    if(document.getElementById('somar') === caixa) {
        result.value = x + y;
    }

    if(document.getElementById('subtrair') === caixa) {
        result.value = x - y;
    }

    if(document.getElementById('multiplicar') === caixa) {
        result.value = x * y;
    }

    if(document.getElementById('dividir') === caixa) {
        result.value = x / y;
    }
}

// Atividade 4
let nome = ['Jonas', 'Rafas', 'Albertos', 'Martinhos', 'Dantas'];
let email = ['1@gmail.com', '2@gmail.com', '3@gmail.com','4@gmail.com', '5@gmail.com'];
let telefone = ['123456', '123456', '123456', '123456', '123456'];
