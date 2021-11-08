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
		filas(i,10,PORT,ANIMACION1);
	}
	for (int i=24;i>=0;i-=8)// PARA CERRAR LA ANIMACION
	{
		filas(i,10,PORT,ANIMACION1);
	}
}

void animacion2(char PORT[], char ANIMACION2[]) {
	// CANTIDAD DE FILAS -1
	for (int i=0;i<=24;i+=8)// PARA ABRIR LA ANIMACION
	{
		filas(i,100,PORT,ANIMACION2);
	}
	for (int i=24;i>=0;i-=8)// PARA CERRAR LA ANIMACION
	{
		filas(i,100,PORT,ANIMACION2);
	}
}

void hola(char PORT[], char MENSAJE[]) {
	//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
	for (int i=0;i<32;i++)
	{
		filas(i,20,PORT,MENSAJE);
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
	
	 
	/*char MENSAJE[]={0x0, 0x7e, 0x7e, 0x18, 0x18, 0x7e, 0x7e, 0x0, //H
		0x0, 0x7e, 0x7e, 0x66, 0x66, 0x7e, 0x7e, 0x0, //O
		0x0, 0x7e, 0x7e, 0x60, 0x60, 0x60, 0x60, 0x0, //L
		0x0, 0x7e, 0x7e, 0x16, 0x16, 0x7e, 0x7e, 0x0, //A
	0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //ESPACIO*/
	
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
	
	int inicio = 0;
	
	while(1){
		
		while (!inicio) {
			
			animacion2(PORT,ANIMACION2);
			// EMPIEZA EL JUEGO CON START/NEXT 0B 0100 0001
			if (PINC == 0x41) {
				while (PINC == 0x41){
					animacion1(PORT,ANIMACION1);
				}
				inicio = 1;
				break;
			}
		}
		
		animacion2(PORT,ANIMACION2);

		
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


