// *******************************************************************
//								SQUID GAME
// *******************************************************************


// ******************************* LIBRERIAS *************************************

#define F_CPU 8000000
#include <stdlib.h>
#include <math.h>
#include <avr/io.h>
#include <util/delay.h>
#include "UART.h"

// ******************************* FUNCIONES DEL JUEGO *************************************

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

// MENSAJE DE HOLA
void hola(char PORT[], char MENSAJE[]) {
	//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
	for (int i=0;i<32;i++)
	{
		filas(i,10,PORT,MENSAJE);
	}
}

// MENSAJE DE SQUID GAME AL INICIO DEL JUEGO
void squid_game(char PORT[], char SQUID_GAME[]) {
	PORTC = ((1<<3));
	//MATRIZ DE LEDS CON DESPLAZAMIENTO DE UNA CADENA
	for (int i=0;i<80;i++)
	{
		filas(i,7,PORT,SQUID_GAME);
	}
	PORTC = ((0<<3));
}

// SONIDO DEL CLICK PARA DIFERENTES USOS
void sonido_click(){
	PORTC = ((1<<4));
	_delay_ms(0.25);
	PORTC = ((0<<4));
}

// NUMEROS DEL 1 AL 4 EN PANTALLA
void numero(char PORT[], char NUMERO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,NUMERO);
	}
}

// ESQUINA DEL JUGADOR ACTUAL
void esquina(char PORT[], char ESQUINA[]){
	for (int i=0;i<=8;i+=8)
	{
		filas(i,100,PORT,ESQUINA);
	}
}

// MOVIMIENTO DE NUMEROS HASTA LLEGAR AL VALOR ALEATORIO DESEADO
void numeros_sorteo(char PORT[], char UNO[], char DOS[], char TRES[], char CUATRO[]){
	numero(PORT,DOS);_delay_ms(20);
	numero(PORT,UNO);_delay_ms(20);
	numero(PORT,CUATRO);_delay_ms(20);
	numero(PORT,TRES);_delay_ms(20);
	numero(PORT,UNO);_delay_ms(20);
	numero(PORT,TRES);_delay_ms(20);
	numero(PORT,DOS);_delay_ms(20);
}

/*unsigned char numeroAleatorio(){
	return random()%100; //VALOR ALEATORIO ENTRE [0-100)
}

void semilla(unsigned char valor){
	srandom(valor);
}*/

// REALIZA LA SELECCION ALEATORIA PARA 3 O 4 JUGADORES
void seleccion_aleatoria(int jugadores, int aleatorio, int REFER[], int ORDEN[]) {
	for (int i=0; i<jugadores; i++){
		// VALOR ALEATORIO PARA ESCOGER UNA POSICION DE LA REFERENCIA
		do {
			aleatorio = random()%jugadores; //[0,3) // LO USO PARA LAS POSICIONES
		} while (REFER[aleatorio] == 0);
		
		ORDEN[i] = REFER[aleatorio];
		REFER[aleatorio] = 0;
	}
}

// PERMITE MOSTRAR EL NUMERO ALEATORIO EN PANTALLA
void seleccion_orden(int valor, char PORT[], char UNO[], char DOS[], char TRES[], char CUATRO[]){
	switch(valor){
		case 1:
			for (int i=0; i<20; i++){
				numero(PORT,UNO);
			}
			break;
		case 2:
			for (int i=0; i<20; i++){
				numero(PORT,DOS);
			}
			break;
		case 3:
			for (int i=0; i<20; i++){
				numero(PORT,TRES);
			}
			break;
		case 4:
			for (int i=0; i<20; i++){
				numero(PORT,CUATRO);
			}
			break;
	}
}

// COMPACTA TODO EL PROCESO DE SELECCION ALEATORIA Y MOSTRAR NUMEROS EN PANTALLA
void visualizar_turno(char PORT[], char ESQUINA[], int ORDEN[], int indice, char UNO[], char DOS[], char TRES[], char CUATRO[]){
	sonido_click();
	esquina(PORT,ESQUINA);
	numeros_sorteo(PORT,UNO,DOS,TRES,CUATRO);
	seleccion_orden(ORDEN[indice],PORT,UNO,DOS,TRES,CUATRO);
}

// VISUALIZACION DEL PISO DEL JUEGO
void piso(char PORT[], char PISO[]){
	for (int i=0;i<8;i+=8)
	{
		filas(i,10,PORT,PISO);
	}
}

// MENSAJE DE "GANASTE" AL FINAL DEL JUEGO EN CASO DE LLEGAR A LA VICTORIA
void ganaste(char PORT[], char GANASTE[]) {
	//MENSAJE DE VICTORIA
	PORTC = ((1<<5));
	for (int i=0;i<56;i++)
	{
		filas(i,10,PORT,GANASTE);
	}
	PORTC = ((1<<5));
}

// ******************************* MAIN *************************************
int main(void)
{
	// PUERTOS PARA EL DATO DE LA MATRIZ
	DDRB = 0B11111111; // SALIDA TODO EL PUERTO B
	
	// PUERTOS PARA EL DESPLAZMIENTO DE LA MATRIZ
	DDRD = 0B11111111; // SALIDAS TODO EL PUERTO D
	
	// PUERTOS PARA LAS BOTONERAS
	DDRC |= (0<<0)|(0<<1)|(0<<2); //ENTRADAS PARA LOS PUERTOS C0,C1,C2
	
	// PUERTOS PARA LOS SONIDOS
	DDRC |= (1<<3)|(1<<4)|(1<<5); //SALIDA PARA EL PUERTO C3 MUSICA RED LIGHT GREEN LIGHT, C4 CLICK, y C5 VICTORIA
		
	//UART_init();
	
	// PUERTOS EN DECIMAL CORRESPONDIENTE AL DESPLAZMIENTO
	char PORT[8] =  {1,2,4,8,16,32,64,128};//VALORES DE PINES DEL PORTD
	//{PD0,PD1,PD2,PD3,PD4,PD5,PD6,PD7}
	
	// VALORES DE LA ELIMINACION DE CADA PISO DE ABAJO HACIA ARRIBA
	char PISO_FUERA[8] = {127,191,223,239,247,251,253,254};
		
	// UBICACIONES
	char UBICACION_SUPERIOR[2] = {129,80};
	char UBICACION_INFERIOR[2] = {129,1};
	
	// ********************* MENSAJES, NUMEROS, FORMAS *********************
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
		0x00, 0x00, 0x11, 0x15, 0x15, 0x1F, 0xA0, 0x40 // CON FLECHAS
	};
	
	char NUMERO4[] = {
		0x40, 0xA0, 0x07, 0x04, 0x04, 0x1F, 0x0, 0x0 // CON FLECHAS
	};
	
	char UNO[] = {
		0x0, 0x0, 0x04, 0x04, 0x7E, 0x7E, 0x0, 0x0 // UNO DEL SORTEO
	};
	
	char DOS[] = {
		0x0, 0x0, 0x7A, 0x7A, 0x5E, 0x5E, 0x0, 0x0 // DOS DEL SORTEO
	};
	
	char TRES[] = {
		0x0, 0x0, 0x5A, 0x5A, 0x7E, 0x7E, 0x0, 0x0 // TRES DEL SORTEO
	};
	
	char CUATRO[] = {
		0x0, 0x0, 0x18, 0x1C, 0x72, 0x7E, 0x0, 0x0 // CUATRO DEL SORTEO
	};
	
	char ESQUINA1[] = {
		0x01, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, // ESQUINA 'A' ENCENDIDA
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 // ESQUINA 'A' APAGADA
	};
	
	char ESQUINA2[] = {
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x01, // ESQUINA 'B' ENCENDIDA
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 // ESQUINA 'B' APAGADA
	};
	
	char ESQUINA3[] = {
		0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, // ESQUINA 'C' ENCENDIDA
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 // ESQUINA 'C' APAGADA
	};
	
	char ESQUINA4[] = {
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, // ESQUINA 'D' ENCENDIDA
		0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 // ESQUINA 'D' APAGADA
	};
	
	char PISO[] = {
		0,0,0,0,0,0,0,0 //REFERENCIA INCIAL DEL PISO APAGADO POR COMPLETO
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
	
	// VARIABLES INICIALES PREVIO A LA ENTRADA AL WHILE(1)
	int inicio = 0;
	int valor3 = 1;
	int jugadores = 0;
	
	// ********************* WHILE(1) *********************
	while(1){
		
		// ANIMACION DE ENTRADA
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
		DERECHA:   0B 0100 0010
		IZQUIERDA: 0B 0100 0100 */
		
		//NUMERO 3 CON FLECHA A LA DERECHA
		jugadores = 0;
		while (valor3) {
			numero(PORT,NUMERO3);
			// SI PRESIONA PARA LA DERECHA
			if (PINC == 0x42) {
				// SONIDO DEL CLICK
				sonido_click();
				while (1) {
					numero(PORT,NUMERO4);
					// SI PRESIONA PARA LA IZQUIERDA
					if (PINC == 0x44) {
						// SONIDO DEL CLICK
						sonido_click();
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
		// SE VUELVE AL VALOR3 = 0 PARA NO ENTRAR A LA SELECCION NUEVAMENTE
		valor3 = 0;
		
		// EMPIEZA EL JUEGO EN BASE A CANTIDAD DE JUGADORES (3 O 4)
		// ---> ESTO ES PARA EL CASO QUE SE SELECCIONE 3 JUGADORES
		if (jugadores == 3){
			//PARA EL CASO DE LAS 3 ESQUINAS
			int referencia[3] = {1,2,3};
			int orden_juego[3] = {0,0,0};
			int aleatorio = 0;
			
			// SELECCION ALEATORIA DE LOS 3 JUGADORES
			seleccion_aleatoria(jugadores,aleatorio,referencia,orden_juego);
			
			// MOVIMIENTO DE LOS NUMEROS
			// TURNO ESQUINA 1
			visualizar_turno(PORT,ESQUINA1,orden_juego,0,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 2
			visualizar_turno(PORT,ESQUINA2,orden_juego,1,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 3
			visualizar_turno(PORT,ESQUINA3,orden_juego,2,UNO,DOS,TRES,CUATRO);
			
		}
		
		// ---> ESTO ES PARA EL CASO QUE SE SELECCIONE 4 JUGADORES
		if (jugadores == 4){
			//PARA EL CASO DE LAS 4 ESQUINAS
			int referencia[4] = {1,2,3,4};
			int orden_juego[4] = {0,0,0,0};
			int aleatorio = 0;
			
			// SELECCION ALEATORIA DE LOS 3 JUGADORES
			seleccion_aleatoria(jugadores,aleatorio,referencia,orden_juego);
			
			// MOVIMIENTO DE LOS NUMEROS
			// TURNO ESQUINA 1
			visualizar_turno(PORT,ESQUINA1,orden_juego,0,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 2
			visualizar_turno(PORT,ESQUINA2,orden_juego,1,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 3
			visualizar_turno(PORT,ESQUINA3,orden_juego,2,UNO,DOS,TRES,CUATRO);
			
			// TURNO ESQUINA 4
			visualizar_turno(PORT,ESQUINA4,orden_juego,3,UNO,DOS,TRES,CUATRO);
			
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
							numero(PORT,UNO);
						}
						break;
					case 1:
						for (int i=0; i<20; i++){
							numero(PORT,DOS);
						}
						break;
					case 2:
						for (int i=0; i<20; i++){
							numero(PORT,TRES);
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


