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

int main(void)
{
	// PARA EL DATO
	DDRB = 0B11111111;
	// PARA EL DESPLAZMIENTO
	DDRC |= (1<<0)|(1<<1); // SALIDAS C0 y C1 
	DDRD |= (1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)|(1<<7); //SALIDAS D2,D3,D4,D5,D6,D7
	
	char PORT[8] =  {1,2,4,8,16,32,64,128};//valores de pines del  PORTD
	//{PD0,PD1,PD2,PD3,PD4,PD5,PD6,PD7}
	
	
	char MENSAJE[]={0x0, 0x7e, 0x7e, 0x18, 0x18, 0x7e, 0x7e, 0x0, //H
		0x0, 0x7e, 0x7e, 0x66, 0x66, 0x7e, 0x7e, 0x0, //O
		0x0, 0x7e, 0x7e, 0x60, 0x60, 0x60, 0x60, 0x0, //L
		0x0, 0x7e, 0x7e, 0x16, 0x16, 0x7e, 0x7e, 0x0, //A
	0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //ESPACIO
	
	while(1){
		
		
		//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
		for (int i=0;i<32;i++)//
		{
			for (int k=0;k<50;k++)//
			{
				for (int j=0; j<8;j++)//
				{
					if (j==0 || j==1){
						PORTD = 0;
						PORTC = PORT[j];
					}
					
					if (j!=0 && j!=1){
						PORTC = 0;
						PORTD = PORT[j];
					}
					
					PORTB = ~MENSAJE[i+j];// se niega para que se muestre en la matriz
					_delay_ms(0.25);// delay para que se muestre en la matriz sin parpadeos
				}
			}

		}
	}
}


