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
altura_8 dword 174    ; en cm
peso_8 dword 6500      ; en gramos

;inmediato  (inm)
;memoria (mem)
;registro (reg)

; imc = peso / (altura * altura)

.code
	main8 PROC
		;L�gica del Programa
		
		mov eax, altura_8
		
		mul eax     ; altura * altura 
		;mul altura_8

		mov edx, 0   ; limpiar el registro del residuo

		mov ebx, eax ;respaldo el valor de altura al cuadrado en ebx

		mov eax, peso_8

		div ebx  ;  


		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF  ; SALTO DE LINEA


		exit	
	main8 ENDP
	END main8