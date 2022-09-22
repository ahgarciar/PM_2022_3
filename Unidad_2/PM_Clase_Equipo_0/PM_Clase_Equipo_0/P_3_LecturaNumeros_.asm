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
	main3 PROC
		;Lógica del Programa

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