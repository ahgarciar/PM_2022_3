TITLE Trabajo 1
;DESCRPICI�N 
;Objetivo: Primera ejec�ci�n de masm
;
; Autore(s):
;         Garc�a Ruiz Alejandro H.
; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N
INCLUDE Irvine32.inc  
.data
; �rea de Declaraci�n de Variables

.code
	main1 PROC
		;L�gica del Programa
		
		;saltos incondicionales --->>>>>  JMP

		MOV EAX, 10
		MOV EBX, 5

		JMP SALIR

		ADD EAX, EBX

		SALIR:

			CALL WRITEDEC
			CALL CRLF

		exit	
	main1 ENDP
	END main1