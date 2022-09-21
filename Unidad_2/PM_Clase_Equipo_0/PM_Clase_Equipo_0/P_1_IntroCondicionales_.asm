TITLE Trabajo 1
;DESCRPICIÓN 
;Objetivo: Primera ejecúción de masm
;
; Autore(s):
;         García Ruiz Alejandro H.
; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN
INCLUDE Irvine32.inc  
.data
; Área de Declaración de Variables

.code
	main1 PROC
		;Lógica del Programa
		
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