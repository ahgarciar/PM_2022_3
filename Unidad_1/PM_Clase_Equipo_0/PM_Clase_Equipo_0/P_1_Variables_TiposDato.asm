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
num_b byte 65
;num2_b byte 265  ; no valido
num_word word 300
num_dword dword 300

.code
	main1 PROC
		;L�gica del Programa
		mov ax, 300 
		exit	
	main1 ENDP
	END main1