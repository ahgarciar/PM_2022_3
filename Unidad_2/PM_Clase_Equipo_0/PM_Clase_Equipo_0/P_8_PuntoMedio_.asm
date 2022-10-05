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

; pMedio = (X1 + X2)/2

cX1_8 db "Ingresa valor de X1:",0
cX2_8 db "Ingresa valor de X2:",0

cResultado_8 db "Resultado: ",0

; A PARTIR DE AHORA...
;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
	main8 PROC
		;Lógica del Programa

		mov edx, offset cX1_8
		call writestring
		call crlf
	
		call readint ; eax
		mov ebx, eax ; respalda el valor de X1

		mov edx, offset cX2_8
		call writestring
		call crlf

		call readint ;  eax 

		add eax, ebx   ; eax = eax + ebx

		mov edx, 0
		mov ecx, 2
		div ecx   ; cociente = eax     residuo = edx

		mov edx, offset cresultado_8
		call writestring
		call crlf

		call writeint

		exit	

	main8 ENDP
	END main8