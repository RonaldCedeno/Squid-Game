#define F_CPU 8000000
#include <stdlib.h>
#include <math.h>
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

// ANIMACION DEL ENCENDIDO DEL JUEGO
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

// ANIMACION DEL ENCENDIDO DEL JUEGO
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
		filas(i,10,PORT,MENSAJE);
	}
}

void squid_game(char PORT[], char SQUID_GAME[]) {
	PORTC = ((1<<3));
	//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
	for (int i=0;i<80;i++)
	{
		filas(i,7,PORT,SQUID_GAME);
	}
	PORTC = ((0<<3));
}

void numero(char PORT[], char NUMERO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,NUMERO);
	}
}

void uno(char PORT[], char UNO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,UNO);
	}
}

void dos(char PORT[], char DOS[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,DOS);
	}
}

void tres(char PORT[], char TRES[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,TRES);
	}
}

void cuatro(char PORT[], char CUATRO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,CUATRO);
	}
}

void esquina(char PORT[], char ESQUINA[]){
	for (int i=0;i<=8;i+=8)
	{
		filas(i,100,PORT,ESQUINA);
	}
}

/*unsigned char numeroAleatorio(){
	return random()%100; //VALOR ALEATORIO ENTRE [0-100)
}

void semilla(unsigned char valor){
	srandom(valor);
}*/

void numeros_sorteo(char PORT[], char UNO[], char DOS[], char TRES[], char CUATRO[]){
	dos(PORT,DOS);_delay_ms(20);
	uno(PORT,UNO);_delay_ms(20);
	cuatro(PORT,CUATRO);_delay_ms(20);
	tres(PORT,TRES);_delay_ms(20);
	uno(PORT,UNO);_delay_ms(20);
	tres(PORT,TRES);_delay_ms(20);
	dos(PORT,DOS);_delay_ms(20);
}

void seleccion_orden(int valor, char PORT[], char UNO[], char DOS[], char TRES[], char CUATRO[]){
	switch(valor){
		case 1:
			for (int i=0; i<20; i++){
				uno(PORT,UNO);
			}
			break;
		case 2:
			for (int i=0; i<20; i++){
				dos(PORT,DOS);
			}
			break;
		case 3:
			for (int i=0; i<20; i++){
				tres(PORT,TRES);
			}
			break;
		case 4:
			for (int i=0; i<20; i++){
				cuatro(PORT,CUATRO);
			}
			break;
	}
}

void piso(char PORT[], char PISO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,PISO);
	}
}

void ganaste(char PORT[], char GANASTE[]) {
	//MENSAJE DE VICTORIA
	PORTC = ((1<<5));
	for (int i=0;i<56;i++)
	{
		filas(i,10,PORT,GANASTE);
	}
	PORTC = ((1<<5));
}

int main(void)
{
	// PARA EL DATO
	DDRB = 0B11111111; // SALIDA TODO EL PUERTO B
	
	// PARA EL DESPLAZMIENTO
	DDRD = 0B11111111; // SALIDAS TODO EL PUERTO D
	
	// PARA LAS BOTONERAS
	DDRC |= (0<<0)|(0<<1)|(0<<2); //ENTRADAS PARA LOS PUERTOS C0,C1,C2
	DDRC |= (1<<3)|(1<<4)|(1<<5); //SALIDA PARA EL PUERTO C3 MUSICA RED LIGHT GREEN LIGHT, C4 CLICK, y C5 VICTORIA
		
	//UART_init();
	
	// VA CON EL DESPLAZMIENTO
	char PORT[8] =  {1,2,4,8,16,32,64,128};//VALORES DE PINES DEL PORTD
	//{PD0,PD1,PD2,PD3,PD4,PD5,PD6,PD7}
	
	// VALORES DE LA ELIMINACION DE CADA PISO DE ABAJO HACIA ARRIBA
	char PISO_FUERA[8] = {127,191,223,239,247,251,253,254};
		
	// UBICACIONES
	char UBICACION_SUPERIOR[2] = {129,80};
	char UBICACION_INFERIOR[2] = {129,1};
	
	char SQUID_GAME[]={0x0, 0x44, 0x4A, 0x4A, 0x4A, 0x4A, 0x32, 0x0, //S
		0x0, 0x3C, 0x42, 0x42, 0x22, 0x5C, 0x0, 0x0, //Q
		0x0, 0x3E, 0x40, 0x40, 0x40, 0x40, 0x3E, 0x0, //U
		0x0, 0x42, 0x42, 0x7E, 0x7E, 0x42, 0x42, 0x0, //I
		0x0, 0x7E, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x0, //D
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, //ESPACIO
		0x0, 0x7E, 0x42, 0x52, 0x52, 0x52, 0x72, 0x0, //G
		0x0, 0x78, 0x14, 0x12, 0x12, 0x14, 0x78, 0x0, //A
		0x0, 0x7E, 0x04, 0x08, 0x08, 0x04, 0x7E, 0x0, //M
		0x0, 0x7E, 0x4A, 0x4A, 0x4A, 0x42, 0x42, 0x0, //E
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, //ESPACIO
	}; 
	
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
		0x40, 0xA0, 0x07, 0x04, 0x04, 0x1F, 0x0, 0x0, // CON FLECHAS
		//0x0, 0x0, 0x07, 0x04, 0x04, 0x1F, 0x0, 0x0 // SIN FLECHAS
	};
	
	char UNO[] = {
		0x0, 0x0, 0x04, 0x04, 0x7E, 0x7E, 0x0, 0x0
	};
	
	char DOS[] = {
		0x0, 0x0, 0x7A, 0x7A, 0x5E, 0x5E, 0x0, 0x0
	};
	
	char TRES[] = {
		0x0, 0x0, 0x5A, 0x5A, 0x7E, 0x7E, 0x0, 0x0
	};
	
	char CUATRO[] = {
		0x0, 0x0, 0x18, 0x1C, 0x72, 0x7E, 0x0, 0x0
	};
	
	char ESQUINA1[] = {
		0x01, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	};
	
	char ESQUINA2[] = {
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x01,
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	};
	
	char ESQUINA3[] = {
		0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	};
	
	char ESQUINA4[] = {
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80,
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	};
	
	char PISO[] = {
		0,0,0,0,0,0,0,0
	};
	
	char GANASTE[] = {
		0x0, 0x7E, 0x42, 0x52, 0x52, 0x52, 0x72, 0x0, //G
		0x0, 0x78, 0x14, 0x12, 0x12, 0x14, 0x78, 0x0, //A
		0x0, 0x7E, 0x04, 0x08, 0x10, 0x20, 0x7E, 0x0, //N
		0x0, 0x78, 0x14, 0x12, 0x12, 0x14, 0x78, 0x0, //A
		0x0, 0x44, 0x4A, 0x4A, 0x4A, 0x4A, 0x32, 0x0, //S
		0x0, 0x02, 0x02, 0x7E, 0x7E, 0x02, 0x02, 0x0, //T
		0x0, 0x7E, 0x4A, 0x4A, 0x4A, 0x42, 0x42, 0x0, //E
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 //ESPACIO
	};
	
	int inicio = 0;
	int valor3 = 1;
	int jugadores = 0;
	
	while(1){
		
		while (!inicio) {
			animacion1(PORT,ANIMACION1);
			// EMPIEZA EL JUEGO CON START/NEXT 0B 0100 0001
			if (PINC == 0x41) {
				inicio = 1;
				squid_game(PORT,SQUID_GAME);
				break;
			}
			animacion2(PORT,ANIMACION2);
			// EMPIEZA EL JUEGO CON START/NEXT 0B 0100 0001
			if (PINC == 0x41) {
				inicio = 1;
				squid_game(PORT,SQUID_GAME);
				break;
			}
		}
		
		/* EMPIEZA LA SELECCION DE CANTIDAD DE JUGADORES CON:
		DERECHA: 0B 0100 0010
		IZQUIERDA: 0B 0100 0100 */
		
		//NUMERO 3 CON FLECHA A LA DERECHA
		jugadores = 0;
		while (valor3) {
			numero(PORT,NUMERO3);
			// SI PRESIONA PARA LA DERECHA
			if (PINC == 0x42) {
				// SONIDO DEL CLICK
				PORTC = ((1<<4));
				_delay_ms(0.25);
				PORTC = ((0<<4));
				while (1) {
					numero(PORT,NUMERO4);
					// SI PRESIONA PARA LA IZQUIERDA
					if (PINC == 0x44) {
						// SONIDO DEL CLICK
						PORTC = ((1<<4));
						_delay_ms(0.25);
						PORTC = ((0<<4));
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
		
		if (jugadores == 3){
			//PARA EL CASO DE LAS 3 ESQUINAS
			int referencia[4] = {1,2,3};
			int orden_juego[4] = {0,0,0};
			int aleatorio = 0;
			
			for (int i=0; i<3; i++){
				// VALOR ALEATORIO PARA ESCOGER UNA POSICION DE LA REFERENCIA
				do {
					aleatorio = random()%3; //[0,3) // LO USO PARA LAS POSICIONES
				} while (referencia[aleatorio] == 0);
				
				orden_juego[i] = referencia[aleatorio];
				referencia[aleatorio] = 0;
			}
			
			// MOVIMIENTO DE LOS NUMEROS
			// TURNO ESQUINA 1
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA1);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[0],PORT,UNO,DOS,TRES,CUATRO);
			
			
			// TURNO ESQUINA 2
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA2);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[1],PORT,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 3
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA3);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[2],PORT,UNO,DOS,TRES,CUATRO);
			
		}
		
		if (jugadores == 4){
			//PARA EL CASO DE LAS 4 ESQUINAS
			int referencia[4] = {1,2,3,4};
			int orden_juego[4] = {0,0,0,0};
			int aleatorio = 0;
			
			for (int i=0; i<4; i++){
				// VALOR ALEATORIO PARA ESCOGER UNA POSICION DE LA REFERENCIA
				do {
					/*unsigned char valor = numeroAleatorio();
					semilla(valor);*/
					aleatorio = random()%4; //[0,4) // LO USO PARA LAS POSICIONES
				} while (referencia[aleatorio] == 0);
				
				orden_juego[i] = referencia[aleatorio];
				referencia[aleatorio] = 0;
			}
			
			// MOVIMIENTO DE LOS NUMEROS
			// TURNO ESQUINA 1
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA1);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[0],PORT,UNO,DOS,TRES,CUATRO);
			
			
			// TURNO ESQUINA 2
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA2);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[1],PORT,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 3
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA3);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[2],PORT,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 4
			PORTC = ((1<<4));
			_delay_ms(0.25);
			PORTC = ((0<<4));
			esquina(PORT,ESQUINA4);
			numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
			seleccion_orden(orden_juego[3],PORT,UNO,DOS,TRES,CUATRO);
			
			_delay_ms(200);
			
			char orden_indice [4] = {0,0,0,0};
			int bandera = 0;
			while (bandera < 4){
				for (int i = 0; i<4; i++) {
					int jugador_actual = orden_juego[i];
					if (jugador_actual == bandera+1){
						orden_indice[bandera] = i;
						bandera += 1;
						break;
					}	
				}
			}
			bandera = 0;
			int entrada = 1;
			int avance_derecha = 7;
			int avance_izquierda = 7;
			int resultado = 255;
			int resultado_derecha = 255;
			int resultado_izquierda = 255;
			while (bandera < 1){
				int indice = orden_indice[bandera];
				switch(indice){
					case 0:
						for (int i=0; i<20; i++){
							uno(PORT,UNO);
						}
						break;
					case 1:
						for (int i=0; i<20; i++){
							dos(PORT,DOS);
						}
						break;
					case 2:
						for (int i=0; i<20; i++){
							tres(PORT,TRES);
						}
						break;
					case 3:
						PISO[0] = 129;
						PISO[3] = resultado;
						PISO[4] = resultado;
						PISO[7] = UBICACION_INFERIOR[0];
						while (entrada && avance_derecha>=0 && avance_izquierda>=0) {
							//129,0,0,255,255,0,0,129
							piso(PORT,PISO);
							//129,0,0,255,255,0,0,1
							PISO[7] = UBICACION_INFERIOR[1];
							PISO[3] = resultado;
							PISO[4] = resultado;
							//81,0,0,255,255,0,0,1
							piso(PORT,PISO);
							//129,0,0,255,127,0,0,129
							PISO[7] = UBICACION_INFERIOR[0];
							PISO[3] = resultado_izquierda;
							PISO[4] = resultado_derecha;
							// SI PRESIONA PARA LA DERECHA
							if (PINC == 0x42) {
								// SONIDO DEL CLICK
								PORTC = ((1<<4));
								_delay_ms(0.25);
								PORTC = ((0<<4));
								resultado_derecha = (pow(2,8)-1) - (pow(2,avance_derecha));
								PISO[4] = resultado_derecha;
								avance_derecha -= 1;
							}
							if (PINC == 0x44) {
								// SONIDO DEL CLICK
								PORTC = ((1<<4));
								_delay_ms(0.25);
								PORTC = ((0<<4));
								resultado_izquierda = (pow(2,8)-1) - (pow(2,avance_izquierda));
								PISO[4] = resultado_izquierda;
								avance_izquierda -= 1;
							}	
						}
						break;
				}
				bandera += 1;
			}
		}
		
		ganaste(PORT,GANASTE);
		
	}
}


