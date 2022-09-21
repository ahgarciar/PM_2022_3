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
num1_3 dword 10
num2_3 dword 15

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
	main3 PROC
		;Lógica del Programa
		
		;sub num1_3, num2_3 ; NO SE PUEDE XX
		
		;NUM 1 = 10 ////////////////// NUM2 = 15
		;REG DE PROPOSITO GENERAL : EAX, EBX, ECX, EDX
		MOV EAX, num2_3  

		;SUB DESTINO, ORIGEN    
		;DESTINO = DESTINO - ORIGEN ? CORRECTO
		;DESTINO = ORIGEN - DESTINO ?

		;	10, 15
		SUB NUM1_3, EAX  ; EL RESULTADO SE GUARDA EN: NUM1_2

		MOV EAX, NUM1_3 ; PARA PODER IMPRIMIR EL VALOR DE LA SUMA
		;CALL WRITEDEC  ;IMPRIME EN CONSOLA EL VALOR DE EAX
		CALL WRITEINT
		CALL CRLF  ; SALTO DE LINEA


		exit	
	main3 ENDP
	END main3