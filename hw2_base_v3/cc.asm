	.ORIG x3000
	; add
	AND R0, R0, #0 		; 3000
	BRN DONE 		; 3002
	BRP DONE		; 3004
	BRNP DONE 		; 3006
	ADD R1, R1, #1		; 3008
	BRN DONE		; 300a
	BRZ DONE		; 300c
	BRNZ DONE		; 300e
	ADD R7, R1, #-2		; 3010
	BRP DONE		; 3012
	BRZ DONE		; 3014
	BRZP DONE		; 3016
	; and/ld
	LEA R0, A		; 3018
	LDW R5, R0, #0		; 301a
	LDW R4, R0, #0		; 301c
	AND R6, R5, R4		; 301e
	BRP DONE		; 3020
	BRZ DONE		; 3022
	LDW R7, R0, #-1		; 3024
	BRP DONE		; 3026
	BRN DONE		; 3028
	BRNP DONE		; 302a
	LDW R3, R0, #2		; 302c
	BRN DONE		; 302e
	BRZ DONE		; 3030
	BRNZ DONE		; 3032
	AND R4, R0, #0 		; 3034
	BRN DONE		; 3036
	BRP DONE		; 3038
	BRNP DONE		; 303a
	;LEA R1, D		
	;BRZ DONE
	;BRN DONE
	;BRNZ DONE
	LDW R5, R0, #0          ;303c
	NOT R5, R5		;303e
	BRN DONE		;3040
	BRZ DONE		;3042
	BRNZ DONE		;3044
	NOT R4, R5		; 3046
	BRZ DONE		; 3048
	BRP DONE		; 304a
	BRZP DONE		; 304c
	AND R3, R3, #0		; 304e
	NOT R3, R3		; 3050
	NOT R6, R3		; 3062
	BRN DONE		; 3054
	BRP DONE		; 3056
	BRNP DONE		; 3058
	LDW R1, R0, #1		; 305a
	BRZ DONE		; 305c
	BRP DONE		; 305e
	BRZP DONE		; 3060
	ADD R0, R0, #5		; 3062
DONE	HALT			; 3064
C	.FILL x0                ;  3066
A	.FILL xEFFF             ;  3068
B	.FILL xF000
D	.FILL x1100
	.END