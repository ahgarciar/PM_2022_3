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
cadena_4 db "Mensaje en Consola",0

.code
	main4 PROC
		;L�gica del Programa

		mov edx, offset cadena_4
		call writestring
		
		exit	
	main4 ENDP
	END main4