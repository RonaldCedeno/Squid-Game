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
	DDRB = 0B11111111; // SALIDA TODO EL PUERTO B
	
	// PARA EL DESPLAZMIENTO
	DDRC |= (1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4); // SALIDAS C0,C1,C2,C3,C4 
	DDRD |= (1<<5)|(1<<6)|(1<<7); //SALIDAS D5,D6,D7
	
	// PARA LAS BOTONERAS
	DDRD |= (0<<2)|(0<<3)|(0<<4); //ENTRADAS PARA LOS PUERTOS D2,D3,D4
	
	UART_init();
	
	char PORT[8] =  {1,2,4,8,16,32,64,128};//VALORES DE PINES DEL PORTC Y PORTD
	//{PC0,PC1,PC2,PC3,PC4,PD5,PD6,PD7}
	
	 
	char MENSAJE[]={0x0, 0x7e, 0x7e, 0x18, 0x18, 0x7e, 0x7e, 0x0, //H
		0x0, 0x7e, 0x7e, 0x66, 0x66, 0x7e, 0x7e, 0x0, //O
		0x0, 0x7e, 0x7e, 0x60, 0x60, 0x60, 0x60, 0x0, //L
		0x0, 0x7e, 0x7e, 0x16, 0x16, 0x7e, 0x7e, 0x0, //A
	0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //ESPACIO
	
	while(1){
		
		//INICIO 0B 0100 0000
		while (PIND == 0x4){
		}
		
		//PRESIONA BOTONERA START/NEXT 0B 0110 0000
		if (PIND == 0x6){
			
			while (PIND == 0x6){
			}
			
			//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
			for (int i=0;i<32;i++)//
			{
				for (int k=0;k<50;k++)//
				{
					for (int j=0; j<8;j++)//
					{
						if (j==0 || j==1 || j==2 || j==3 || j==4){
							PORTD = 0;
							PORTC = PORT[j];
						}
						
						if (j!=0 && j!=1 && j!=2 && j!=3 && j!=4){
							PORTC = 0;
							PORTD = PORT[j];
						}
						
						PORTB = ~MENSAJE[i+j];// SE NIEGA PARA QUE SE MUESTRE EN LA MATRIZ
						_delay_ms(0.25);// DELAY PARA QUE SE MUESTRE EN LA MATRIZ SIN PARPADEOS
					}
				}
			}
			
			PORTB = 0;
			PORTD = 0;
		}
		
	}
}

