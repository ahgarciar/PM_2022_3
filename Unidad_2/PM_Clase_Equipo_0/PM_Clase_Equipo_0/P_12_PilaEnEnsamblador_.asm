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
	main12 PROC
		;L�gica del Programa

		mov ecx, 10

		push ecx

		mov ecx, 5

		ciclo:
			mov eax, ecx
			call writedec
			call crlf
		loop ciclo

		pop ecx

		mov eax, ecx
		call crlf
		call writedec
		call crlf


		exit	

	main12 ENDP
	END main12