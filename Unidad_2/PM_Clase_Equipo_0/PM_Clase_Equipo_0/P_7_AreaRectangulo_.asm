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
cbase_7 db "Ingresa la base:",0
caltura_7 db "Ingresa la altura:",0

cResultado_7 db "Resultado: ",0

; A PARTIR DE AHORA...
;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
	main7 PROC
		;L�gica del Programa

		mov edx, offset cbase_7
		call writestring
		call crlf

		call readint ; eax

		mov edx, offset caltura_7
		call writestring
		call crlf

		mov ecx, eax
		call readint ;  eax

		mov edx, offset cresultado_7
		call writestring
		call crlf

		mul ecx  ; eax = altura * base

		call writeint

		exit	

	main7 ENDP
	END main7