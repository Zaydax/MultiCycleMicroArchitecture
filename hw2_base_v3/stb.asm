	.ORIG x3000
	LEA R2, A
	AND R0, R0, #0
	AND R3, R3, #0
	ADD R3, R3, #5
	ADD R0, R0, #-5
	STB R0, R2, #1
	RSHFA R0, R0, #8
	STB R0, R2, #0
	BRzp ERR
	AND R3, R3, #0
ERR	LDW R1, R2, #0
	HALT
A	.FILL x0
	.END