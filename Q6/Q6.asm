#armazena os valores extremos 
#de cada led, trabalhamos com
#valor que o termometro do
#arduino trabalha

lw x20, a
lw x21, b
lw x22, c
lw x23, d
lw x24, e

#AVISO: para que nao demore
#tanto compilando recomendo
#da fastrun para ser mais rapido

#para os testes ficarem mais 
#rapido fizemos o codigo em
#um loop infinito

loop1:
	beq x0, x0, DesligarLeds

inicio:
	lb x10, 0(x0)
	sb x10, 1030(x0)
    lh x10, 1031(x0)

#verifica qual led vai ligar
#de acordo com a temperatura
compara:
    blt x10, x20, led1 
    blt x10, x21, led2 
    blt x10, x22, led3
    blt x10, x23, led4 
    blt x10, x24, led5 
    beq x0, x0, led6

led1:
	lw x11, three
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
 	beq x0, x0, loop1 
led2:
	lw x11, five
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
	beq x0, x0, loop1 
led3:
	lw x11, ten
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
	beq x0, x0, loop1 
led4:
	lw x11, six
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
	beq x0, x0, loop1 
led5:
	lw x11, eleven
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
	beq x0, x0, loop1
led6:
	lw x11, nine
	lw x12, High
	sb x11, 1033(x0)
	sb x12, 1034(x0)
	beq x0, x0, loop1

DesligarLeds:
	lw x9, three
	beq x11, x9, L2
		lw x31, three
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	L2:
	lw x9, five
	beq x11, x9, L3
		lw x31, five
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	L3:
	lw x9, six
	beq x11, x9, L4
		lw x31, six
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	L4:
	lw x9, nine
	beq x11, x9, L5
		lw x31, nine
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	L5:
	lw x9, ten
	beq x11, x9, L6
		lw x31, ten
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	L6:

	lw x9, eleven
	beq x11, x9, inicio
		lw x31, eleven
		lw x12, Low
		sb x31, 1033(x0)
		sb x12, 1034(x0)
	beq x0, x0, inicio
#nunca vai para o halt, o codigo
#fica em loop infino para que
#possa comparar mais de um led 
#por vez

halt

three: .byte 3
five: .byte 5
six: .byte 6
nine: .byte 9
ten: .byte 10
eleven: .byte 11
High: .byte 255
Low: .byte 0

a: .word 0x147
b: .word 0x1ad
c: .word 0x213
d: .word 0x27a
e: .word 0x2e0

