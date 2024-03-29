ASSUME CS: CODE, DS: DATA
DATA SEGMENT
NUM DB 02H, 05H, 02H, 01H, 04H
COUNT EQU 05H
SUM DW ?
DATA ENDS
CODE SEGMENT
START: MOV AX, DATA
	 MOV DS, AX
	 MOV SI, OFFSET NUM
	 MOV CL, COUNT
	 XOR AX, AX
	 XOR BX, BX
REPEAT: MOV BL, [SI]
	  ADD AX, BX
	  INC SI
     	  DEC CL
	  JNZ REPEAT
	  MOV SUM, AX
INT 03H
CODE ENDS 
END START