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
cadena_4 db "Mensaje en Consola",0

.code
	main4 PROC
		;Lógica del Programa

		mov edx, offset cadena_4
		call writestring
		
		exit	
	main4 ENDP
	END main4