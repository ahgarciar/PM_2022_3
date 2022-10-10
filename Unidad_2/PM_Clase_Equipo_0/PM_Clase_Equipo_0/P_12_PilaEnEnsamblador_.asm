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
	main12 PROC
		;Lógica del Programa

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