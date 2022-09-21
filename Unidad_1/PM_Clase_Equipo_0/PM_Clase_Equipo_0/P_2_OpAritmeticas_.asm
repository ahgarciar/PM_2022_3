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
num1_2 dword 10
num2_2 dword 15

;inmediato  (inm)
;memoria (mem)
;registro (reg)

; de     a 
;inm  a mem  SI
;inm  a inm  X
;inm  a reg  SI

;mem  a inm  X
;mem  a mem  X
;mem  a reg  SI

;reg  a mem  SI
;reg  a reg  SI
;reg  a inm  X 

.code
	main2 PROC
		;Lógica del Programa
		
		;add num1_2, num2_2 ; NO SE PUEDE XX
		
		;NUM 1 = 10 ////////////////// NUM2 = 15
		;REG DE PROPOSITO GENERAL : EAX, EBX, ECX, EDX
		MOV EAX, num2_2  

		;ADD DESTINO, ORIGEN    DESTINO = DESTINO + ORIGEN

		ADD NUM1_2, EAX  ; EL RESULTADO SE GUARDA EN: NUM1_2

		MOV EAX, NUM1_2 ; PARA PODER IMPRIMIR EL VALOR DE LA SUMA
		CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL CRLF  ; SALTO DE LINEA

		ADD EAX, NUM1_2  ; EL RESULTADO SE GUARDA EN: EAX
		 
		CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL CRLF  ; SALTO DE LINEA


		exit	
	main2 ENDP
	END main2