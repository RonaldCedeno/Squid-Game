void Tone1() {
  Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
}

void Tone2() {
  Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
}

//Creando notas musicales para el juego del calamar

//Sonido de B4
void ToneB4 (int time) {
   Sound_Play(494,time);
}

//Sonido de Eb5
void Eb5 (int time) {
   Sound_Play(622,time);
}

//Sonido de A4
void A4 (int time) {
   Sound_Play(440,time);
}

//Sonido de G4
void G4 (int time) {
   Sound_Play(392,time);
}

//Sonido de E4
void E4 (int time) {
   Sound_Play(330,time);
}

//Sonido de B3
void ToneB3 (int time) {
   Sound_Play(247,time);
}

//Sonido de D4
void D4 (int time) {
   Sound_Play(294,time);

}

//Sonido de GB4
void Gb4 (int time) {
   Sound_Play(370,time);
}

//Sonido de C4
void C4 (int time) {
   Sound_Play(262,time);
}

//Espacio
void espacio () {
   Sound_Play(0,50);
}

void Delay_ms(const unsigned long time_in_ms);


//Melodia de Squid Game
void SquidGame (){
   /*ToneB4(300);ToneB4(300);ToneB4(600);   ToneB4(300);ToneB4(300);ToneB4(600);
   Eb5(300);ToneB4(300);;ToneB4(300);A4(300);G4(300);A4(300);ToneB4(600);
   ToneB4(300);ToneB4(300);ToneB4(600);   ToneB4(300);ToneB4(300);ToneB4(600);
   ToneB4(300);A4(300);G4(300);A4(300);G4(300);E4(300);E4(600); */

   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
   Eb5(300);espacio();ToneB4(300);espacio();ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();ToneB4(600);espacio();
   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
   ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();G4(300);espacio();E4(300);espacio();E4(600);espacio();
}

void Red_Green() {
   ToneB3(300);E4(300);E4(600);E4(600);D4(650);
   E4(300);E4(300);ToneB3(300);ToneB3(300);D4(650);
}

void Pink_Soldiers(int t1, int t2){
   G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);C4(t1);G4(t1);C4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t2);C4(t2);G4(t1);GB4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
   G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
}

void main() {

  ANSEL  = 0;                        // Configure AN pins as digital
  ANSELH = 0;
  C1ON_bit = 0;                      // Disable comparators
  C2ON_bit = 0;

  TRISB  = 0xF8;                     // Configure RB7..RB3 as input

  Sound_Init(&PORTC, 3);
  Sound_Play(500, 1000);             // Play sound at 880Hz for 1 second

  while (1) {
    if (Button(&PORTB,7,1,1))        // RB7 plays Tone1
      Tone1();
    while (RB7_bit) ;                // Wait for button to be released

    if (Button(&PORTB,6,1,1))        // RB6 plays Tone2
      Tone2();
    while (RB6_bit) ;                // Wait for button to be released

    if (Button(&PORTB,5,1,1)){       // RB5 plays "Pink Soldiers"
      // Wait for button to be released
      while (RB5_bit){
            Pink_Soldiers(550,250);
      }
    }

    if (Button(&PORTB,4,1,1)){        // RB4 plays "Red Light Green Light"
      // Wait for button to be released
      while (RB4_bit){
            Red_Green();
            Delay_ms(500);
      }
    }

    if (Button(&PORTB,3,1,1)){        // RB3 plays "Way back then"
      // Wait for button to be released
      while (RB3_bit){
            SquidGame();
            //Delay_ms(250);
      }
    }
  }
}