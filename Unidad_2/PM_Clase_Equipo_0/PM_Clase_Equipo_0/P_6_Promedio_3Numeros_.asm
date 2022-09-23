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
cNumero1_6 db "Ingresa Numero 1:",0
cNumero2_6 db "Ingresa Numero 2:",0
cNumero3_6 db "Ingresa Numero 3:",0

cResultado_6 db "Resultado: ",0

; A PARTIR DE AHORA...
;SIEMPRE QUE SE PUEDA SE DEBE PRIORIZAR EL USO DE REGISTROS
; POR ENCIMA DEL DE VARIABLES

.code
	main6 PROC
		;Lógica del Programa

		mov edx, offset cNumero1_6
		call writeString
		call crlf

		CALL READINT ; LEER NUMERO 1. SE ALMACENA EN EAX
		; RESPALDAR EL VALOR DE EAX PARA EVITAR QUE SE PIERDA
		; EAX, EBX, ECX, EDX  ---> DISPONIBLES SON : EBX Y ECX
		MOV ECX, EAX 

		mov edx, offset cNumero2_6
		call writeString
		call CrLf

		CALL READINT ; LEER NUMERO 2. SE ALMACENA EN EAX
		ADD ECX, EAX  ; SUMA EL VALOR DE EAX CON EL DE ECX
						;Y ALMACENA EL RESULTADO EN ECX

		mov edx, offset cNumero3_6
		call writeString
		call CrLf

		CALL READINT ; LEER EL NUMERO 3. SE ALMACENA EN EAX
		ADD EAX, ECX  ; SE SUMA EL VALOR DE ECX CON EAX
						; Y SE ALMACENA EN EAX
						; SE PREFIERE QUE SE ALMACENE EN EAX
						;PARA FACILITAR LA DIVISION QUE SE REALIZARA 
						; A CONTINUACION 

		MOV EBX, 3
		MOV EDX, 0
		DIV EBX ; EAX / EBX    COCIENTE = EAX  RESIDUO = EDX

		mov edx, offset cResultado_6
		call writeString
		Call CrLf

		CALL WRITEINT

		exit	

	main6 ENDP
	END main6