let anonasc = parseFloat(prompt("Digite o seu ano de nascimento: "))
let anoatual = parseFloat(prompt("Digite o ano atual: "))
// item a
let idadeanos = (anoatual - anonasc)
document.write("A idade dessa pessoa em anos é: ",idadeanos,' anos.<br>')
// item b
let idademeses = (idadeanos * 12)
document.write("A idade dessa pessoa em meses é: ",idademeses,' meses.<br>')
// item c
let idadedias = (idademeses * 30)
document.write("A idade dessa pessoa em dias é: ",idadedias,' dias.<br>')
// item d
let idadesemana = (idademeses * 7)
document.write("A idade dessa pessoa em dias é: ",idadesemana,' semana.<br>')