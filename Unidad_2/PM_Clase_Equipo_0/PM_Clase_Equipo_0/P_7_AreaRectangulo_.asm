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
cbase_7 db "Ingresa la base:",0
caltura_7 db "Ingresa la altura:",0

cResultado_7 db "Resultado: ",0

; A PARTIR DE AHORA...
;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
	main7 PROC
		;Lógica del Programa

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