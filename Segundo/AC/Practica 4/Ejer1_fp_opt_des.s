;*****************************************
;***Suma los elementos del vecto A en B***
;*****************************************
.data
	A: 		.word 0,1065353216,1073741824,1077936128,1082130432
			.word 1084227584,1086324736,1088421888,1090519040,1091567616
	B: 		.word 0
	Xtop: 	.word 10
	Xinc: 	.word 4
	k: 		.word 5

.text
start:
	
	LW R1, k			;R1: Decremento contador
	LW R2, Xtop			;R2: Indice contador
	LW R3, Xinc			;R3: Incremento posicion
	
	ADD R5, R0, R0		;R5: Indice
	ADDF F1, F0, F0		;R6: Resultado
	
	loop:
		SUB R2, R2, R1	;Decrementar el contador
		
		LF F2, A(R5)	;Carga el dato en el registro temporal F2
		ADD R5, R5, R3	;Incrementar la posicion
		ADDF F1, F1, F2	;Realiza la suma
		
		LF F2, A(R5)	;Carga el dato en el registro temporal F2
		ADD R5, R5, R3	;Incrementar la posicion
		ADDF F1, F1, F2	;Realiza la suma
		
		LF F2, A(R5)	;Carga el dato en el registro temporal F2
		ADD R5, R5, R3	;Incrementar la posicion
		ADDF F1, F1, F2	;Realiza la suma
		
		LF F2, A(R5)	;Carga el dato en el registro temporal F2
		ADD R5, R5, R3	;Incrementar la posicion
		ADDF F1, F1, F2	;Realiza la suma
		
		LF F2, A(R5)	;Carga el dato en el registro temporal F2
		ADD R5, R5, R3	;Incrementar la posicion
		ADDF F1, F1, F2	;Realiza la suma
		
		BNEZ R2, loop	;Repetir hasta que el contador llegue a 0
		NOP
		
	SF B, F1			;Deja el resultado en B
trap #6

