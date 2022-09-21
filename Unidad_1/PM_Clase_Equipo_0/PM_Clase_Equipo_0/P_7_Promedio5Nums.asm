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
cal1_7 dword 7
cal2_7 dword 8
cal3_7 dword 8
cal4_7 dword 8
cal5_7 dword 9

;inmediato  (inm)
;memoria (mem)
;registro (reg)

; prom = (c1 + c2 + c3 + c4 +c5) / 5

.code
	main7 PROC
		;L�gica del Programa
		
		mov eax, cal1_7
		add eax, cal2_7  ; eax =  c1 + c2
		add eax, cal3_7  ; eax =  (c1 + c2) + c3
		add eax, cal4_7
		add eax, cal5_7 ; eax = c1+c2+c3+c4+c5

		mov ebx, 5 ; divisor

		mov edx, 0 ;limpiar el registro que se usara como almacen del residuo

		div ebx   ;eax = cociente         edx = residuo
		
		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF  ; SALTO DE LINEA


		exit	
	main7 ENDP
	END main7