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
	main14 PROC
		;L�gica del Programa

		mov eax, 10
		mov ebx, 5

		call writedec

		call crlf

		xchg eax, ebx

		call writedec


		exit	

	main14 ENDP
	END main14