iniciar:
	lb x11, 1025(x0)
	lb x12, 1025(x0)
	lb x13, 1025(x0)
	lb x14, 1025(x0)
	lw x15, Z
	lw x16, um

N0:
	bne x11, x15, N1
	bne x12, x15, N1
	bne x13, x15, N1
	bne x14, x15, N1
	beq x0, x0, printar0
N1:
	bne x11, x15, N2
	bne x12, x15, N2
	bne x13, x15, N2
	bne x14, x16, N2
	beq x0, x0, printar1
N2:
	bne x11, x15, N3
	bne x12, x15, N3
	bne x13, x16, N3
	bne x14, x15, N3
	beq x0, x0, printar2
N3:
	bne x11, x15, N4
	bne x12, x15, N4
	bne x13, x16, N4
	bne x14, x16, N4
	beq x0, x0, printar3
N4:
	bne x11, x15, N5
	bne x12, x16, N5
	bne x13, x15, N5
	bne x14, x15, N5
	beq x0, x0, printar4
N5:
	bne x11, x15, N6
	bne x12, x16, N6
	bne x13, x15, N6
	bne x14, x16, N6
	beq x0, x0, printar5
N6:
	bne x11, x15, N7
	bne x12, x16, N7
	bne x13, x16, N7
	bne x14, x15, N7
	beq x0, x0, printar6
N7:
	bne x11, x15, N8
	bne x12, x16, N8
	bne x13, x16, N8
	bne x14, x16, N8
	beq x0, x0, printar7
N8:
	bne x11, x16, N9
	bne x12, x15, N9
	bne x13, x15, N9
	bne x14, x15, N9
	beq x0, x0, printar8
N9:
	bne x11, x16, N10
	bne x12, x15, N10
	bne x13, x15, N10
	bne x14, x16, N10
	beq x0, x0, printar9
N10:
	beq x0, x0, printar10

printar0:
	lb x30, 456(x0)
	lb x31, 466(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar1:
	lb x30, 457(x0)
	lb x31, 466(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar2:
	lb x30, 458(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar3:
	lb x30, 459(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar4:
	lb x30, 460(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar5:
	lb x30, 461(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar6:
	lb x30, 462(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar7:
	lb x30, 463(x0)
	lb x31, 466(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar8:
	lb x30, 456(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar9:
	lb x30, 464(x0)
	lb x31, 465(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
	halt
printar10:
	lb x30, 466(x0)
	lb x31, 466(x0)
	sb x30, 1029(x0)
	sb x31, 1027(x0)
halt

Z: .word 0x30
um: .word 0x31
zero: .byte 63
one: .byte 6
two: .byte 27
three: .byte 15
four: .byte 38
five: .byte 45
six: .byte 61
seven: .byte 7
nine: .byte 47
HIGH: .byte 1
LOW: .byte 0 
