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
num1_4 dword 3
num2_4 dword 15

;inmediato  (inm)
;memoria (mem)
;registro (reg)

.code
	main4 PROC
		;L�gica del Programa
		
		;mul origen  ; eax = eax * origen
		; origen puede ser un registro o memoria, 
		;		pero no puede ser inmediato

		;NUM 1 = 10 ////////////////// NUM2 = 15		
		MOV EAX, num2_4  

		mul num1_4  ; eax = eax * num1_4 

		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF  ; SALTO DE LINEA


		exit	
	main4 ENDP
	END main4