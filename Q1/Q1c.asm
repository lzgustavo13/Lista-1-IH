#AVISO: A entrada deve seguir 
#esse padrão levando em conta 
#o espaço a cada número 
#incluindo o último

# -0012 +0073 +0027 
# x = 0
# +0001 +0079 +0049 
# x = 0
# +0000 +0075 +0025 
# x = 0
# -0061 +0076 +0022 
# x = 0
# +0033 +0047 -0026 
# x = 0

# +0017 +0075 +0028  
# x = 1
# +0000 +0075 +0026 
# x = 1
# +9999 -9999 +9999 
# x = 1
# +0123 -0456 +0789 
# x = 1
# +0001 +0074 +0030 
# x = 1

lw x10,x
lw x11,a
lw x12,b
lw x13,c
lw x28,n #armazena o "-" negativo
lw x14,o #armazena o valor "7"
lw x15,p #armazena o valor "5"
lw x16,l #armazena o valor "2"
lw x20,s #armazena o " " espaco do teclado
lw x21,z #armazena o valor "0"
sw x10,x

#verifica a condicao do A
n1: 
	lb x11, 1025(x0)
	#verifica se A é negativo
	beq x11, x28, fim 
	#loop para limpar n1
	bne x11, x20, n1 #verica a condicao do B
n2: 
	lb x12, 1025(x0)
	#verifica se B é negativo 
	beq x12, x28, limpar  
	lb x12, 1025(x0) 
	#verifica se é diferente 0
	bne x12, x21, fim2 
	lb x12, 1025(x0)
	bne x12, x21, fim2
	lb x12, 1025(x0)
	#verifica 7<terceiro digito de B
	blt x14, x12, fim2 
	#verifica se é igual a 7
	beq x14, x12, compara 
	lb x12, 1025(x0)
	lb x12, 1025(x0)

#verifica a condicao do C
n3: 
	lb x13, 1025(x0)
	#verifica se B é negativo 
	beq x13, x28, fim3 
	lb x13, 1025(x0)
	#verifica se é diferente 0
	bne x13, x21, fimcerto 
	lb x13, 1025(x0)
	bne x13, x21, fimcerto
	lb x13, 1025(x0)
	#verifica 2<terceiro digito de C
 	blt x16, x13, fimcerto 
	bne x13, x16, fim3
	lb x13, 1025(x0)
	blt x15, x13, fimcerto
	beq x0, x0, fim3

#vai limpar o A do teclado até encontrar um espaco
fim: 
	lb x11, 1025(x0)
	bne x11, x20, fim
 
#vai limpar o B do teclado até encontrar um espaco
fim2: 
	lb x12, 1025(x0)
	bne x12, x20, fim2
#vai limpar o C do teclado até encontrar um espaco
fim3:
	lb x13, 1025(x0)
	bne x13, x20, fim3
	sb x10, 1024(x0)
	halt
#se chegou até aqui x=1
fimcerto: 
	lb x13, 1025(x0)
	bne x13, x20, fimcerto
	addi x10, x10, 1
	sw x10,x
	sb x10, 1024(x0)
	halt
#limpar o B
limpar: 
	lb x12, 1025(x0)
	bne x12, x20, limpar 
	beq x12, x20, n3

compara:
	lb x12, 1025(x0)
	#verifica se o quarto digito de B é menor que 5
	blt x15, x12, fim2
	lb x12, 1025(x0)
	#ler o espaco e ir pra n3
	beq x12,x20,n3

a: .word 0x30
b: .word 0x30
c: .word 0x30
o: .word 0x37
p: .word 0x35
l: .word 0x32
s: .word 0x20
n: .word 0x2D
z: .word 0x30
x: .word 0x30


