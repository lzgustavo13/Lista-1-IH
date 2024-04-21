lw x20, space

comeco:

	lb x5, 1025(x0)
	lb x6, 1025(x0)
	bne x6, x20, pular1
		add x28, x0, x5
		beq x0, x0, N4
	pular1:
	lb x7, 1025(x0)
	bne x7, x20, pular2
		add x28, x0, x6
		add x7, x0, x5
		beq x0, x0, N3
	pular2:
	lb x28, 1025(x0)
	bne x28, x20, pular3
		add x28, x0, x7
		add x7, x0, x6
		add x6, x0, x5
		beq x0, x0, N2
	pular3:
		beq x0, x0, N1


N1:
	lb x22, 1025(x0)
	addi x30, x0, 48
	bne x5, x30, pN11
	add x12, x12, x0
	beq x0, x0, N2	 
pN11:
	addi x30, x0, 49
	bne x5, x30, pN12
	addi x12, x12, 1000
	beq x0, x0, N2 
pN12:
	addi x30, x0, 50
	bne x5, x30, pN13
	addi x12, x12, 2000
	beq x0, x0, N2
pN13:
	addi x30, x0, 51
	bne x5, x30, pN14
	addi x12, x12, 1000
	addi x12, x12, 2000
	beq x0, x0, N2
pN14:
	addi x30, x0, 52
	bne x5, x30, pN15
	addi x12, x12, 2000
	addi x12, x12, 2000
	beq x0, x0, N2
pN15:
	addi x30, x0, 53
	bne x5, x30, pN16
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 1000
	beq x0, x0, N2
pN16:
	addi x30, x0, 54
	bne x5, x30, pN17
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	beq x0, x0, N2
pN17:
	addi x30, x0, 55
	bne x5, x30, pN18
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 1000
	beq x0, x0, N2
pN18:
	addi x30, x0, 56
	bne x5, x30, pN19
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	beq x0, x0, N2
pN19:
	addi x30, x0, 57
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 2000
	addi x12, x12, 1000
	beq x0, x0, N2

N2:
	addi x30, x0, 48
	bne x6, x30, pN21
	add x12, x12, x0
	beq x0, x0, N3	 
pN21:
	addi x30, x0, 49
	bne x6, x30, pN22
	addi x12, x12, 100
	beq x0, x0, N3 
pN22:
	addi x30, x0, 50
	bne x6, x30, pN23
	addi x12, x12, 200
	beq x0, x0, N3
pN23:
	addi x30, x0, 51
	bne x6, x30, pN24
	addi x12, x12, 300
	beq x0, x0, N3
pN24:
	addi x30, x0, 52
	bne x6, x30, pN25
	addi x12, x12, 400
	beq x0, x0, N3
pN25:
	addi x30, x0, 53
	bne x6, x30, pN26
	addi x12, x12, 500
	beq x0, x0, N3
pN26:
	addi x30, x0, 54
	bne x6, x30, pN27
	addi x12, x12, 600
	beq x0, x0, N3
pN27:
	addi x30, x0, 55
	bne x6, x30, pN28
	addi x12, x12, 700
	beq x0, x0, N3
pN28:
	addi x30, x0, 56
	bne x6, x30, pN29
	addi x12, x12, 800
	beq x0, x0, N3
pN29:
	addi x30, x0, 57
	addi x12, x12, 900
	beq x0, x0, N3

N3:
	addi x30, x0, 48
	bne x7, x30, pN31
	add x12, x12, x0
	beq x0, x0, N4	 
pN31:
	addi x30, x0, 49
	bne x7, x30, pN32
	addi x12, x12, 10
	beq x0, x0, N4 
pN32:
	addi x30, x0, 50
	bne x7, x30, pN33
	addi x12, x12, 20
	beq x0, x0, N4
pN33:
	addi x30, x0, 51
	bne x7, x30, pN34
	addi x12, x12, 30
	beq x0, x0, N4
pN34:
	addi x30, x0, 52
	bne x7, x30, pN35
	addi x12, x12, 40
	beq x0, x0, N4
pN35:
	addi x30, x0, 53
	bne x7, x30, pN36
	addi x12, x12, 50
	beq x0, x0, N4
pN36:
	addi x30, x0, 54
	bne x7, x30, pN37
	addi x12, x12, 60
	beq x0, x0, N4
pN37:
	addi x30, x0, 55
	bne x7, x30, pN38
	addi x12, x12, 70
	beq x0, x0, N4
pN38:
	addi x30, x0, 56
	bne x7, x30, pN39
	addi x12, x12, 80
	beq x0, x0, N4
pN39:
	addi x30, x0, 57
	addi x12, x12, 90
	beq x0, x0, N4

N4:
	addi x30, x0, 48
	bne x28, x30, pN41
	add x12, x12, x0
	beq x0, x0, Computar	 
pN41:
	addi x30, x0, 49
	bne x28, x30, pN42
	addi x12, x12, 1
	beq x0, x0, Computar 
pN42:
	addi x30, x0, 50
	bne x28, x30, pN43
	addi x12, x12, 2
	beq x0, x0, Computar
pN43:
	addi x30, x0, 51
	bne x28, x30, pN44
	addi x12, x12, 3
	beq x0, x0, Computar
pN44:
	addi x30, x0, 52
	bne x28, x30, pN45
	addi x12, x12, 4
	beq x0, x0, Computar
pN45:
	addi x30, x0, 53
	bne x28, x30, pN46
	addi x12, x12, 5
	beq x0, x0, Computar
pN46:
	addi x30, x0, 54
	bne x28, x30, pN47
	addi x12, x12, 6
	beq x0, x0, Computar
pN47:
	addi x30, x0, 55
	bne x28, x30, pN48
	addi x12, x12, 7
	beq x0, x0, Computar
pN48:
	addi x30, x0, 56
	bne x28, x30, pN49
	addi x12, x12, 8
	beq x0, x0, Computar
pN49:
	addi x30, x0, 57
	addi x12, x12, 9
	beq x0, x0, Computar

Computar:
	bne x13, x0, inicio
	add x13, x0, x12
	beq x12, x0, limpar
	add x12, x0, x0
	beq x12, x0, comeco

limpar:
	lb x22, 1025(x0)
	bne x22, x20, limpar
	beq x0, x0, fim

inicio:
	andi x31, x12, 1
	beq x12, x0, comparar
	beq x31, x0, somar

multiplicar:

	add x10, x10, x13
	slli x13, x13, 1
	srai x12, x12, 1
	beq x0, x0, inicio

somar:
	slli x13, x13, 1
	srai x12, x12, 1
	beq x0, x0, inicio

comparar:
	add x28, x0, x0
	lw x31, dmilion
	bge x10, x31, printDmilion
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

printDmilion:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printDmilion
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0 
	lw x31, milion
	blt x10, x31, ZeroMilion

printMilion:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printMilion
ZeroMilion:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0 
	lw x31, cmil
	blt x10, x31, ZeroCmil

printCmil:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printCmil
ZeroCmil:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, dmil
	blt x10, x31, ZeroDmil

printDmil:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printDmil
ZeroDmil:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x28, x0, x0
	lw x31, mil
	add x0, x0, x0
	blt x10, x31, ZeroMil

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

printCen:
	sub x10, x10, x31
	addi x28, x28, 1
	bge x10, x31, printCen
ZeroCen:
	addi x28, x28, 48
	sb x28, 1024(x0)
	add x9, x0, x0
	lw x31, dez
	blt x10, x31, ZeroDez

printDez:
	sub x10, x10, x31
	addi x9, x9, 1
	bge x10, x31, printDez
ZeroDez:
	add x0, x0, x0
	addi x9, x9, 48
	sb x9, 1024(x0)
fim: 
	addi x10, x10, 48
	sb x10, 1024(x0)
halt

trans: .word 0x30
space: .word 0x20
dmilion: .word 10000000
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







