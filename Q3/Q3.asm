lw x20, space 

#AVISO: os testes devem ser
#feito como os exemplos abaixo
#sempre tendo um espaço após a
#primeira e segunda palavra
#e as letras sempre maiúsculas 

#JADIAEL LUIZ 
#P1 WIN 19 X 17

#HEITOR ANDREYWID
#P2 WIN 24 X 12


#Neste código vai verificar 
#cada letra que vai de início 
#até p26, sendo de A até Z, 
#cada letra com sua pontuação, 
#vai ler a palavra do player 1 
#até o espaço e após isso vai 
#levar o player 2

inicio:
	lb x12, 1025(x0)
	beq x12, x20, player1
	lw x7, A 
	bne x12, x7, P1
	addi x10, x10, 1
	beq x0,x0, inicio
P1:
	lw x7, B
	bne x12, x7, P2
	addi x10, x10, 5
	beq x0,x0, inicio
P2:
	lw x7, C
	bne x12, x7, P3
	addi x10, x10, 5
	beq x0,x0, inicio
P3:
	lw x7, D
	bne x12, x7, P4
	addi x10, x10, 3 
	beq x0,x0, inicio
P4:
	lw x7, E
	bne x12, x7, P5
	addi x10, x10, 1 
	beq x0,x0, inicio
P5:
	lw x7, F
	bne x12, x7, P6
	addi x10, x10, 4 
	beq x0,x0, inicio
P6:
	lw x7, G
	bne x12, x7, P7
	addi x10, x10, 3
	beq x0,x0, inicio
P7:
	lw x7, H
	bne x12, x7, P8
	addi x10, x10, 4 
	beq x0,x0, inicio
P8:
	lw x7, I
	bne x12, x7, P9
	addi x10, x10, 1 
	beq x0,x0, inicio
P9:
	lw x7, J
	bne x12, x7, P10
	addi x10, x10, 6 
	beq x0,x0, inicio
P10:
	lw x7, K
	bne x12, x7, P11
	addi x10, x10, 2 
	beq x0,x0, inicio
P11:
	lw x7, L
	bne x12, x7, P12
	addi x10, x10, 6 
	beq x0,x0, inicio
P12:
	lw x7, M
	bne x12, x7, P13
	addi x10, x10, 5 
	beq x0,x0, inicio
P13:
	lw x7, N
	bne x12, x7, P14
	addi x10, x10, 5 
	beq x0,x0, inicio
P14:
	lw x7, O
	bne x12, x7, P15
	addi x10, x10, 1 
	beq x0,x0, inicio
P15:
	lw x7, P
	bne x12, x7, P16
	addi x10, x10, 5 
	beq x0,x0, inicio
P16:
	lw x7, Q
	bne x12, x7, P17
	addi x10, x10, 9 
	beq x0,x0, inicio
P17:
	lw x7, R
	bne x12, x7, P18
	addi x10, x10, 2
	beq x0,x0, inicio
P18:
	lw x7, S
	bne x12, x7, P19
	addi x10, x10, 2 
	beq x0,x0, inicio
P19:
	lw x7, T
	bne x12, x7, P20
	addi x10, x10, 3 
	beq x0,x0, inicio
P20:
	lw x7, U
	bne x12, x7, P21
	addi x10, x10, 1 
	beq x0,x0, inicio
P21:
	lw x7, V
	bne x12, x7, P22
	addi x10, x10, 4 
	beq x0,x0, inicio
P22:
	lw x7, W
	bne x12, x7, P23
	addi x10, x10, 4 
	beq x0,x0, inicio
P23:
	lw x7, X
	bne x12, x7, P24
	addi x10, x10, 6 
	beq x0,x0, inicio
P24:
	lw x7, Y
	bne x12, x7, P25
	addi x10, x10, 4
	beq x0,x0, inicio
P25:
	lw x7, Z
	bne x12, x7, P26
	addi x10, x10, 9
	beq x0,x0, inicio
P26:
    bne x12, x20, inicio

#verifica se o x11 que 
#é o player 1 ja teve seu
#valor computado, caso sim
#vai comparar
player1:
	bne x11, x0, comparar
	add x11, x0, x10
	add x10, x0, x0
	beq x10, x0, inicio
 
comparar:
	beq x11, x10, empate
	blt x10, x11, player1win
#se nao for empate e nem
#o player 1 ganhar,
#o player 2 ganha e ajusta
#o placar  
	add x7, x10, x0
	add x10, x11, x0
	add x11, x7, x0
	beq x0, x0, player2win
empate:
	lw x7, D
	sb x7, 1024(x0)
	lw x7, R
	sb x7, 1024(x0)
	lw x7, A
	sb x7, 1024(x0)   
	lw x7, W
	sb x7, 1024(x0)
	beq x0, x0, placar
player1win:
	lw x7, P
	sb x7, 1024(x0)
	lw x7, u
	sb x7, 1024(x0)
	lw x7, space
	sb x7, 1024(x0)
	lw x7, W
	sb x7, 1024(x0)
	lw x7, I
	sb x7, 1024(x0)
	lw x7, N
	sb x7, 1024(x0)
	beq x0, x0, placar
player2win:
	lw x7, P
	sb x7, 1024(x0)
	lw x7, d
	sb x7, 1024(x0)
	lw x7, space
	sb x7, 1024(x0)
	lw x7, W
	sb x7, 1024(x0)
	lw x7, I
	sb x7, 1024(x0)
	lw x7, N
	sb x7, 1024(x0)
	beq x0, x0, placar

#vai imprimir o placar
placar:
	lw x7, space
	sb x7, 1024(x0)
	#armazena 10
	lw x31, t 
	bge x11, x31, dezena
	beq x0, x0, unidade

#vai subtrair 10 até 
#até o x11 ser menor que 10
dezena:
	sub x11, x11, x31 
	#contador que armazena a dezena
	addi x28, x28, 1
	bge x11, x31, dezena
	lw x29, trans
	#transforma em char o numero
	add x28, x28, x29
	sb x28, 1024(x0)
	add x28, x0, x0

#transforma o valor do digito
unidade:
	lw x29, trans
	add x11, x11, x29
	sb x11, 1024(x0)
	lw x5, u
	#vai por fim caso ja tenha
	#imprimido os valores
	beq x6, x5, END
	lw x7, space
	sb x7, 1024(x0)
	lw x7, X
	sb x7, 1024(x0)
	lw x7, space
	sb x7, 1024(x0)
	addi x6, x0, 49
	add x11, x0, x10
	bge x11, x31, dezena
	beq x0, x0, unidade
	
END:	
	halt

trans: .word 0x30
u: .word 0x31
d: .word 0x32
t: .word 10


A: .word 0x41
B: .word 0x42
C: .word 0x43
D: .word 0x44
E: .word 0x45
F: .word 0x46
G: .word 0x47
H: .word 0x48
I: .word 0x49
J: .word 0x4A
K: .word 0x4B
L: .word 0x4C
M: .word 0x4D
N: .word 0x4E
O: .word 0x4F
P: .word 0x50
Q: .word 0x51
R: .word 0x52
S: .word 0x53
T: .word 0x54
U: .word 0x55
V: .word 0x56
W: .word 0x57
X: .word 0x58
Y: .word 0x59
Z: .word 0x5A
space: .word 0x20










