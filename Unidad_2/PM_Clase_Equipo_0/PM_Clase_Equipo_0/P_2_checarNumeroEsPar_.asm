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
dividendo_2 dword 2

.code
	main2 PROC
		;Lógica del Programa
		
		; checar si un numero es par

		mov eax, 17    ;eax contiene al numero que se va a checar si es par

		mov edx, 0

		div dividendo_2    ; eax =  cociente   edx = residuo	

		;SUPONGA.... 
		MOV EAX, 1  ; SI EAX = 1, EL NUMERO COMPARADO ES PAR
		; SI EAX = 0, ENTONCES, EL NUMERO COMPARADO ES IMPAR

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		CMP EDX, 0   ; COMPARA EDX CON 0

		JNZ CAMBIA_VALOR_EAX  ; CUANDO EL RESULTADO DE LA COMPARACION
							  ; ES DIFERENTE DE CERO, ENTONCES 
							  ; SE SALTA A "CAMBIA_VALOR_EAX" 
		JMP CONTINUAR

		CAMBIA_VALOR_EAX:
			MOV EAX, 0
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		CONTINUAR:
			CALL WRITEDEC
			CALL CRLF

		exit	
	main2 ENDP
	END main2