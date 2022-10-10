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
	main14 PROC
		;Lógica del Programa

		mov eax, 10
		mov ebx, 5

		call writedec

		call crlf

		xchg eax, ebx

		call writedec


		exit	

	main14 ENDP
	END main14