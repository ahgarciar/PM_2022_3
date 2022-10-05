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
	main9 PROC
		;Lógica del Programa
		
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