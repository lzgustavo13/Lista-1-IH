#os dois valores que vai mutiplicar
lw x9, mc
lw x28, mp

#o resultado sai no 
#registrador x30

#vai verificar se o mp que é
#o multiplicador se o bit
#menos significativo é 1
inicio:
    andi x31, x28, 1
    beq x28, x0, fim
    beq x31, x0, somar

#se o bit menos significativo é 1
#ele soma o mutiplicando ao
#resultado e faz shiftleft no
#multiplicador e um shiftright 
#no mutiplicando
multiplicar:
    add x30, x30, x9
    slli x9, x9, 1
    srai x28, x28, 1
    jal x12, inicio

#caso o bit menos significativo
#for 0 ele apenas faz os shifts
somar:
    slli x9, x9, 1
    srai x28, x28, 1
    jal x12, inicio

fim:
    halt

#aqui voce mudar o valor
#que quer multiplicar
mc: .word 10
mp: .word 15
