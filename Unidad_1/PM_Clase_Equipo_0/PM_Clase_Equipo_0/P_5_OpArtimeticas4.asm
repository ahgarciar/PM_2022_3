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
num1_5 dword 6
num2_5 dword 15

;inmediato  (inm)
;memoria (mem)
;registro (reg)

.code
	main5 PROC
		;Lógica del Programa
		
		;div origen  ; eax = eax / origen
		; origen puede ser un registro o memoria, 
		;		pero no puede ser inmediato

		;eax = cociente (resultado)
		;edx = residuo 

		;NOTA: se debe tener cuidado que el reg edx 
		;no tenga informacion imporante y que ademas
		;se garantice que no haya sobreflujo
		;		->Se recomienda antes de dividir: edx = 0


		;NUM 1 = 3 ////////////////// NUM2 = 15		
		;MOV EAX, num2_5  
		MOV EAX, num1_5   ;ejemplo 2 

		mov edx, 0  ; edx = 0

		;div num1_5  ; eax = eax / num1_5 

		div num2_5  ; eax = eax / num2_5  ; ejemplo2



		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT

		CALL CRLF  ; SALTO DE LINEA


		exit	
	main5 ENDP
	END main5