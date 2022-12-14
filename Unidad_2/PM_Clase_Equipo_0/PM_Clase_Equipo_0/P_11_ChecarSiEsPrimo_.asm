TITLE Trabajo 1
;DESCRPICI?N 
;Objetivo: Primera ejec?ci?n de masm
;
; Autore(s):
;         Garc?a Ruiz Alejandro H.
; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI?N
INCLUDE Irvine32.inc  
.data
; ?rea de Declaraci?n de Variables

INGRESA_NUMERO_11 DB "INGRESA UN NUMERO A CHECAR: ",0
RESULTADO_SI_11 DB "EL NUMERO ES PRIMO", 0
RESULTADO_NO_11 DB "EL NUMERO NO ES PRIMO", 0

CONTADOR_11 DWORD 0 

.code
	main11 PROC
		;L?gica del Programa

		MOV EDX, OFFSET INGRESA_NUMERO_11
		CALL WRITESTRING

		CALL READINT ; NUMERO QUE SE A CHECAR  = EAX

		MOV EBX , EAX ; AUXILIAR PARA LA DIVISION

		MOV ECX, EAX ; PARA DEFINIR LA CANTIDAD DIVS A REALIZAR
		DEC ECX 

		CICLO:
			MOV EAX, EBX
			MOV EDX, 0
			DIV	ECX   ; EAX/ECX
			CMP EDX, 0
			JNZ SALTA_A_LOOP

			INC CONTADOR_11

			SALTA_A_LOOP:
				LOOP CICLO

		;MOV EAX, CONTADOR_11
		;CALL WRITEDEC

		CMP CONTADOR_11,1
		JNZ NO_ES_PRIMO
			MOV EDX, OFFSET RESULTADO_SI_11
			JMP	CONTINUAR

		NO_ES_PRIMO:
			MOV EDX, OFFSET RESULTADO_NO_11
		
		CONTINUAR:
			CALL WRITESTRING

		exit	

	main11 ENDP
	END main11