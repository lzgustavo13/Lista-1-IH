lw x27, space

#AVISO: a entrada deve ser
#segundo o exemplo abaixo
#com o espaco no final

#1234 
#33, resultado

#678
#46080, resultado 

#o fatorial de n é a soma do
#fatorial de n-1, n vezes

#fatorial de 1
one:
	addi x9, x0, 1	

#fatorial de 2
two:
	addi x28, x28, 1
	add x18, x18, x9
	lw x29, dois
	bne x28, x29, two
	add x28, x0, x0 

#fatorial de 3 	
three:
	addi x28, x28, 1
	add x19, x19, x18
	lw x29, tres
	bne x28, x29, three
	add x28, x0, x0

#fatorial de 4
four:
	addi x28, x28, 1
	add x20, x20, x19
	lw x29, quatro
	bne x28, x29, four
	add x28, x0, x0

#fatorial de 5
five:
	addi x28, x28, 1
	add x21, x21, x20
	lw x29, cinco
	bne x28, x29, five
	add x28, x0, x0

#fatorial de 6
six:
	addi x28, x28, 1
	add x22, x22, x21
	lw x29, seis
	bne x28, x29, six
	add x28, x0, x0

#fatorial de 7
seven:
	addi x28, x28, 1
	add x23, x23, x22
	lw x29, sete
	bne x28, x29, seven
	add x28, x0, x0

#fatorial de 8
eight:
	addi x28, x28, 1
	add x24, x24, x23
	lw x29, oito
	bne x28, x29, eight
	add x28, x0, x0

#fatorial de 9
nine:
	addi x28, x28, 1
	add x25, x25, x24
	lw x29, nove
	bne x28, x29, nine
	add x28, x0, x0

#ATENÇÃO: Lembre do espaço 
#no final

#vai vericar os numeros de 0 a 9
#até o espaco
inicio:
	lb x11, 1025(x0)
	beq x11, x27, comparar
	addi x30, x0, 48
	#verifica se é diferente 
	#de 0
	bne x11, x30, p1 
	add x10, x10, x0
	beq x0, x0, inicio
#Do p1 ao p9 vai verificar 
#de 1 até 9
p1:
	addi x30, x0, 49
	bne x11, x30, p2
	add x10, x10, x9
	beq x0, x0, inicio 
p2:
	addi x30, x0, 50
	bne x11, x30, p3
	add x10, x10, x18
	beq x0, x0, inicio
p3:
	addi x30, x0, 51
	bne x11, x30, p4
	add x10, x10, x19
	beq x0, x0, inicio
p4:
	addi x30, x0, 52
	bne x11, x30, p5
	add x10, x10, x20
	beq x0, x0, inicio
p5:
	addi x30, x0, 53
	bne x11, x30, p6
	add x10, x10, x21
	beq x0, x0, inicio
p6:
	addi x30, x0, 54
	bne x11, x30, p7
	add x10, x10, x22
	beq x0, x0, inicio
p7:
	addi x30, x0, 55
	bne x11, x30, p8
	add x10, x10, x23
	beq x0, x0, inicio
p8:
	addi x30, x0, 56
	bne x11, x30, p9
	add x10, x10, x24
	beq x0, x0, inicio
p9:
	addi x30, x0, 57
	add x10, x10, x25
	beq x0, x0, inicio

#vai comparar a dezena, a centena
#a milhar e assim sucessivamente
#para printar o valor
comparar:
	add x28, x0, x0
	lw x31, milion
	bge x10, x31, printMilion
	lw x31, cmil
	bge x10, x31, printCmil
	lw x31, dmil
	bge x10, x31, printDmil
	lw x31, mil
	bge x10, x31, printMil
	lw x31, cen
	bge x10, x31, printCen
	lw x31, dez
	bge x10, x31, printDez
	beq x0, x0, fim

#vai subtrair por 1.000.000 até
#nao conseguir mais subtrair
printMilion:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printMilion
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0 
	lw x31, cmil
	blt x10, x31, ZeroCmil

#vai subtrair por 100.000 até
#nao conseguir mais subtrair
printCmil:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printCmil

#caso ocorra um número 
#fechado exemplo: 10000 
#iria ficar só 0, iria 
#pintar só 10, para 
#tratar isso criamos a 
#familia zero, que contém 
#zerocmil, zeromil  
ZeroCmil:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, dmil
	blt x10, x31, ZeroDmil

#vai subtrair por 10.000 até
#nao conseguir mais subtrair
printDmil:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printDmil

ZeroDmil:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, mil
	blt x10, x31, ZeroMil

#vai subtrair por 1.000 até
#nao conseguir mais subtrair
printMil:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printMil
ZeroMil:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, cen
	blt x10, x31, ZeroCen

#vai subtrair por 100 até
#nao conseguir mais subtrair
printCen:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printCen
ZeroCen:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, dez
	blt x10, x31, ZeroDez

#vai subtrair por 10 até
#nao conseguir mais subtrair
printDez:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printDez
ZeroDez:
	addi x28, x28, 48
	sb x28, 1024(x0)
fim: 
	addi x10, x10, 48
	sb x10, 1024(x0)
halt

space: .word 0x20
milion: .word 1000000
cmil: .word 100000
dmil: .word 10000
mil: .word 1000
cen: .word 100
dez: .word 10
um: .word 0x1
dois: .word 0x2
tres: .word 0x3
quatro: .word 0x4
cinco: .word 0x5
seis: .word 0x6
sete: .word 0x7
oito: .word 0x8
nove: .word 0x9

