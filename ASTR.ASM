ASSUME CS: CODE, DS: DATA, ES: EXTRA
DATA SEGMENT
A DB 'WELCOMES !!!!!$'
B DB 'YOU ALL'
DATA ENDS
EXTRA SEGMENT
C DB ?
EXTRA ENDS
CODE SEGMENT
START: MOV AX, DATA
	 MOV DS, AX
	 MOV AX, EXTRA
	 MOV ES, AX
	 MOV SI, OFFSET A
	 MOV DI, OFFSET C
	 CLD 
	 MOV CX, 9
	 REP MOVSB
	 CLD
	 MOV SI, OFFSET B
	 MOV CX, 7
	 REP MOVSB
	 MOV SI, OFFSET A
	 ADD SI, 9
	 MOV CX, 5
	 REP MOVSB
INT 03H 
CODE ENDS
END START