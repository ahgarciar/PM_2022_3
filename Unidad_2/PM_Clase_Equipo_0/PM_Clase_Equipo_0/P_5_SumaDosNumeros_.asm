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
cNumero1_5 db "Ingresa Numero 1:",0
cNumero2_5 db "Ingresa Numero 2:",0
cResultado_5 db "Resultado: ",0

.code
	main5 PROC
		;L�gica del Programa

		mov edx, offset cNumero1_5
		call writeString
		call crlf

		mov edx, offset cNumero2_5
		call writeString
		call CrLf

		mov edx, offset cResultado_5
		call writeString
		Call CrLf


		exit	

	main5 ENDP
	END main5