// DLL_AppHibrida_ASM_C.cpp : Define las funciones exportadas de la aplicación DLL.
//

#include "stdafx.h"

//#include "stdio.h"
//#include "conio.h"

#include "iostream"

using namespace std;

int __stdcall suma(int a, int b) {
	//data
	int resultado;

	_asm {  //ensamblador inline

		mov eax, a
		add eax, b

		mov resultado, eax
	}

	return resultado;
}

int __stdcall resta(int a, int b) {

	int resultado;

	_asm {

		mov eax, a
		sub eax, b

		mov resultado, eax
	}

	return resultado;
}

int __stdcall multiplicacion(int a, int b) {

	int resultado;

	_asm {

		mov eax, a
		mul b

		mov resultado, eax
	}

	return resultado;
}

double __stdcall division(int a, int b) {

	int cociente;
	int residuo;

	_asm {
		mov edx, 0
		mov eax, a
		div b

		mov cociente, eax  //cociente
		mov residuo, edx //residuo
	}
	// 5/2  = 2 enteros + 1/2    ---> 1 = residuo    2 = divisor   
	return cociente + residuo / (double)b;
}



#pragma region PROGRAMA EJEMPLO _ PUNTO MEDIO

//Programa para calcular el punto medio de dos puntos:
//P1 (X1, Y1)    P2(X2,Y2)

//PmX  = (X2+X1)/2
//PmY  = (Y2+Y1)/2

const char* __stdcall puntoMedio(int x1, int y1, int x2, int y2) {
	const char* resultado;

	//PmX
	_asm {
		mov eax, x2
		add eax, x1; x2 + x1

		mov edx, 0; limpia el registro
		mov ebx, 2
		div ebx

		mov x1, eax; respaldo el valo de eax  ... para la parte entera

		mov eax, edx
		div ebx
		mov x2, eax; para la primera decimal del numero
	}

	resultado = x1 + "." + x2;

	return resultado;
}

#pragma endregion


#pragma region PROGRAMA EJEMPLO _ puede votar
	//Checar si una persona puede votar
	
int __stdcall puedoVotar(int edad) {
	int resultado = 0; // 0 si no se puede, y 1 si se puede

	_asm {
	
		mov eax, edad

		cmp eax, 18

		Jl continuar
		
			mov resultado, 1

		continuar:
	}

	return resultado;
}

#pragma endregion


#pragma region PROGRAMA EJEMPLO _ discriminante
//obtener el discriminante de una ecuacionde segundo grado
// b^2 - 4 * a * c

int __stdcall discriminante(int a, int b, int c) {
	int resultado = 0; 

	_asm {

			mov eax, b
			mul eax

			mov b,eax

			mov eax, 4
			mul a
			mul c

			xchg b, eax

			sub eax, b

			mov resultado, eax
	}

	return resultado;
}

#pragma endregion

#pragma region PROGRAMA EJEMPLO _ IMC

// IMC = peso / (altura * altura)

int __stdcall calc_IMC(int peso, int altura) {
	int resultado = 0; 

	_asm {

		mov eax, altura
		mul eax; altura al cuadrado

		mov ebx, eax		; altura al cuadrado

		mov edx, 0

		mov eax, peso

		div ebx   ;eax/ebx 

		mov resultado, eax

	}

	return resultado;
}

#pragma endregion


#pragma region PROGRAMA EJEMPLO _ Manhattan

// |P1_xi - P2_xi|

int __stdcall calc_difAbs(int P1_xi, int P2_xi) {
	int resultado = 0; 

	_asm {
		mov eax, P1_xi
		mov ebx, P2_xi

		sub eax, ebx

		cmp eax, 0

		jL Ml
		jmp continuar

		Ml:
			mov ecx, -1
			mul ecx

		continuar:
				mov resultado, eax

	}

	return resultado;
}

#pragma endregion


#pragma region PROGRAMA EJEMPLO _ SumaDosNumeros

// 

int __stdcall SumaDosNumeros(int P1, int P2) {
	int resultado = 0;

	_asm {
		
		mov eax, P1
		add eax, P2

		mov resultado, eax

	}

	return resultado;
}

#pragma endregion


#pragma region PROGRAMA EJEMPLO _ Identificar Si X se encuentra en el intervalo [Z-Y]

// 

int __stdcall ChecarX(int X, int Z, int Y) {
	int resultado = 0; //0 no se encuentra 1, se encuentra

	_asm {
		mov eax, X

		cmp eax, Z

		jl ending
		; si es mayor o igual

		cmp eax, Y
		ja ending
		; si es menor o igual
		
		mov resultado, 1

		ending:

	}

	return resultado;
}

#pragma endregion

/*
	TAREA:
		-DETERMINAR EL TIPO DE SOLUCION DE UNA ECUACION DE SEGUNDO GRADO 
			DADOS SUS COEFICIENTES
		-REGLA DE SARRUS 
		-MATRIZ INVERSA->METODO DE LA MATRIZ ADJUNTA PARA UNA MATRIZ DE SEGUNDO GRADO
*/


int* __stdcall enviar_arreglo() //int[]
{
	int tot_elementos = 3;
	int *arreglo = new int[tot_elementos + 1];
	arreglo[0] = tot_elementos;
	arreglo[1] = -15;
	arreglo[2] = 20;
	arreglo[3] = 8;

	return arreglo;
}

int __stdcall LiberarMemoria(int* arreglo)
{
	delete[] arreglo;
	return 0;
}


double __stdcall promedio(int *arreglo)
{
	double prom = 0;
	
	for (int i = 0; i < sizeof(arreglo); i++)
	{
		prom += arreglo[i];
	}
	
	prom /= sizeof(arreglo);

	return prom;
}

int* __stdcall asm_prueba(int *arreglo)
{	
	//arreglo[1] = 12;
	
	_asm {
		mov esi, arreglo 
		mov eax, 20
		mov dword ptr[esi+4], eax
	}
	

	return arreglo;
}