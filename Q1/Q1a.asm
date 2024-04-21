lw x15,a
lw x11,b
lw x12,c
lw x13,cb #carrega 75 para o reg
lw x14,cc # carrega 25 para o reg
lw x10,x #armazena o valor de x
sw x10,x

blt x15,x0,fim #compara a<0
blt x13,x11,fim #compara 75<b
bge x14,x12,fim #compara 25>=c
#se chegou até aqui o x=1
addi x10,x0,1
sw x10,x 

fim:halt

#mude os valores aqui
a: .word 123 #valor de a
b: .word -456 #valor de b
c: .word 789 # valor de c

cb: .word 75 
cc: .word 25
x: .word 0



