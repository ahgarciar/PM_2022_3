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
num1_4 dword 3
num2_4 dword 15

;inmediato  (inm)
;memoria (mem)
;registro (reg)

.code
	main4 PROC
		;Lógica del Programa
		
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