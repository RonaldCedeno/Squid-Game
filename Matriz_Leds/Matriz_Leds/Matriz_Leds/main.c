/*
 * Matriz_Leds.c
 *
 * Created: 11/7/2021 9:42:33 PM
 * Author : Ronald
 */ 

#define F_CPU 8000000
#include <avr/io.h>
#include <util/delay.h>
#include "UART.h"

// RECORRIDO DEL CODIGO HEXADECIMAL DE CADA CARACTER O FORMA
void filas(int i, int velocidad, char PORT[], char FORMA[]){
	// VELOCIDAD DE DESPLAZAMIENTO
	for (int k=0;k<velocidad;k++)//
	{
		//CANTIDAD DE HEXADECIMALES PARA 1 FORMA PARTICULAR
		for (int j=0; j<8;j++)//
		{
			PORTD = PORT[j];
			PORTB = ~FORMA[i+j];// SE NIEGA PARA QUE SE MUESTRE EN LA MATRIZ
			_delay_ms(0.25);// DELAY PARA QUE SE MUESTRE EN LA MATRIZ SIN PARPADEOS
		}
	}
}

void animacion1(char PORT[], char ANIMACION1[]) {
	// CANTIDAD DE FILAS -1
	for (int i=0;i<=24;i+=8)// PARA ABRIR LA ANIMACION
	{
		filas(i,5,PORT,ANIMACION1);
	}
	for (int i=24;i>=0;i-=8)// PARA CERRAR LA ANIMACION
	{
		filas(i,5,PORT,ANIMACION1);
	}
}

void animacion2(char PORT[], char ANIMACION2[]) {
	// CANTIDAD DE FILAS -1
	for (int i=0;i<=24;i+=8)// PARA ABRIR LA ANIMACION
	{
		filas(i,5,PORT,ANIMACION2);
	}
	for (int i=24;i>=0;i-=8)// PARA CERRAR LA ANIMACION
	{
		filas(i,5,PORT,ANIMACION2);
	}
}

void hola(char PORT[], char MENSAJE[]) {
	//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
	for (int i=0;i<32;i++)
	{
		filas(i,20,PORT,MENSAJE);
	}
}

void numero3(char PORT[], char NUMERO3[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,NUMERO3);
	}
}

void numero4(char PORT[], char NUMERO4[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,NUMERO4);
	}
}

int main(void)
{
	// PARA EL DATO
	DDRB = 0B11111111; // SALIDA TODO EL PUERTO B
	
	// PARA EL DESPLAZMIENTO
	DDRD = 0B11111111; // SALIDAS TODO EL PUERTO D
	
	// PARA LAS BOTONERAS
	DDRC |= (0<<0)|(0<<1)|(0<<2); //ENTRADAS PARA LOS PUERTOS C0,C1,C2
		
	//UART_init();
	
	// VA CON EL DESPLAZMIENTO
	char PORT[8] =  {1,2,4,8,16,32,64,128};//VALORES DE PINES DEL PORTD
	//{PD0,PD1,PD2,PD3,PD4,PD5,PD6,PD7}
	
	 
	char MENSAJE[]={0x0, 0x7e, 0x7e, 0x18, 0x18, 0x7e, 0x7e, 0x0, //H
		0x0, 0x7e, 0x7e, 0x66, 0x66, 0x7e, 0x7e, 0x0, //O
		0x0, 0x7e, 0x7e, 0x60, 0x60, 0x60, 0x60, 0x0, //L
		0x0, 0x7e, 0x7e, 0x16, 0x16, 0x7e, 0x7e, 0x0, //A
	0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //ESPACIO
	
	char ANIMACION1[] = {
		0x0, 0x0, 0x0, 0x18, 0x18, 0x0, 0x0, 0x0, // CENTRO 1
		0x0, 0x0, 0x24, 0x0, 0x0, 0x24, 0x0, 0x0, // CENTRO 2
		0x0, 0x42, 0x0, 0x0, 0x0, 0x0, 0x42, 0x0, // CENTRO 3
		0x81, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x81 // CENTRO 4
	};
	
	char ANIMACION2[] = {
		0x0, 0x0, 0x0, 0x18, 0x18, 0x0, 0x0, 0x0, // CENTRO 1
		0x0, 0x0, 0x3C, 0x24, 0x24, 0x3C, 0x0, 0x0, // CENTRO 2
		0x0, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x7E, 0x0, // CENTRO 3
		0xFF, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0xFF // CENTRO 4
	};
	
	char NUMERO3[] = {
		0x00, 0x00, 0x11, 0x15, 0x15, 0x1F, 0xA0, 0x40, // CON FLECHAS
		//0x0, 0x0, 0x11, 0x15, 0x15, 0x1F, 0x0, 0x0 // SIN FLECHAS
	};
	
	char NUMERO4[] = {
		0x40, 0xA0, 0x07, 0x04, 0x04, 0x1F, 0x0, 0x00, // CON FLECHAS
		//0x0, 0x0, 0x07, 0x04, 0x04, 0x1F, 0x0, 0x0 // SIN FLECHAS
	};
	
	
	int inicio = 0;
	int valor3 = 1;
	int valor4 = 1;
	int jugadores = 0;
	
	while(1){
		
		while (!inicio) {
			animacion1(PORT,ANIMACION1);
			// EMPIEZA EL JUEGO CON START/NEXT 0B 0100 0001
			if (PINC == 0x41) {
				inicio = 1;
				break;
			}
			animacion2(PORT,ANIMACION2);
			// EMPIEZA EL JUEGO CON START/NEXT 0B 0100 0001
			if (PINC == 0x41) {
				inicio = 1;
				break;
			}
			/*if (PINC == 0x41) {
				while (PINC == 0x41){
					animacion1(PORT,ANIMACION1);
					animacion2(PORT,ANIMACION2);
				}
				inicio = 1;
				break;
			}*/
		}
		
		hola(PORT,MENSAJE);
		
		/* EMPIEZA LA SELECCION DE CANTIDAD DE JUGADORES CON:
		DERECHA: 0B 0100 0010
		IZQUIERDA: 0B 0100 0100 */
		
		//NUMERO 3 CON FLECHA A LA DERECHA
		jugadores = 0;
		while (valor3) {
			numero3(PORT,NUMERO3);
			// SI PRESIONA PARA LA DERECHA
			if (PINC == 0x42) {
				while (valor4) {
					numero4(PORT,NUMERO4);
					// SI PRESIONA PARA LA IZQUIERDA
					if (PINC == 0x44) {
						break;
					}
					// SI SELECCIONA LA OPCION DE 4 JUGADORES
					if (PINC == 0x41) {
						jugadores = 4;
						valor3 = 0;
						break;
					}
				}
			}
			// SI SELECCIONA LA OPCION DE 3 JUGADORES
			if (PINC == 0x41 && valor3) {
				jugadores = 3;
				break;
			}
		}
		
		valor3 = 0;
		
		
		hola(PORT,MENSAJE);
		
		
		
		
		
		/*//INICIO 0B 0100 0000 NO SALE DEL WHILE HASTA QUE SE PRESIONE ALGUN BOTÓN
		while (PIND == 0x4){
		}
		
		
		//PRESIONA BOTONERA START/NEXT 0B 0110 0000
		if (PIND == 0x6){
			
			while (PIND == 0x6){
			}	
		}*/
		
	}
}


