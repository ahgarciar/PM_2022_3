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
	main9 PROC
		;L�gica del Programa
		
		;LA INSTRUCCION LOOP COMPRUEBA AL REGISTRO ECX
		; Y REALIZA UN ITERACION MIENTRAS QUE ECX SEA MAYOR QUE 0
		; -- POR CADA ITERACION ECX DECREMENTA EN 1

		MOV EAX, 10d

		MOV ECX, 5

		ciclo:
			call writedec
			call crlf
		loop ciclo



		exit	

	main9 ENDP
	END main9