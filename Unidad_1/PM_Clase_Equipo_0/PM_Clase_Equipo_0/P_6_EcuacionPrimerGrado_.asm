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
valX_6 dword 5
valM_6 dword 10
valC_6 dword 3

;inmediato  (inm)
;memoria (mem)
;registro (reg)

; y = mx + c

.code
	main6 PROC
		;L�gica del Programa
		
		mov eax, valM_6
		mul valX_6   ; eax = M * X

		add eax, valC_6 
		

		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF  ; SALTO DE LINEA


		exit	
	main6 ENDP
	END main6