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
	main3 PROC
		;L�gica del Programa

		MOV EAX, 10 ; VALOR INICIAL
		CALL WRITEINT  ; IMPRIME EL VALOR DE EAX	
		CALL CRLF ; SALTO DE LINEA

		;LEER NUMEROS 
		CALL READINT ; ALMACENA EL NUMERO INGRESADO POR EL USUARIO EN EAX
		CALL CRLF ; SALTO DE LINEA

		CALL WRITEINT  ; IMPRIME EL VALOR DE EAX
		CALL CRLF ; SALTO DE LINEA

		exit	
	main3 ENDP
	END main3