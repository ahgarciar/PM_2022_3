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
num_b byte 65
;num2_b byte 265  ; no valido
num_word word 300
num_dword dword 300

.code
	main1 PROC
		;Lógica del Programa
		mov ax, 300 
		exit	
	main1 ENDP
	END main1