#line 1 "C:/Users/ronal/OneDrive/Documentos/Squid-Game/Sonidos/Sonidos_Game.c"
void Tone1() {
 Sound_Play(659, 250);
}

void Tone2() {
 Sound_Play(698, 250);
}




void ToneB4 (int time) {
 Sound_Play(494,time);
}


void Eb5 (int time) {
 Sound_Play(622,time);
}


void A4 (int time) {
 Sound_Play(440,time);
}


void G4 (int time) {
 Sound_Play(392,time);
}


void E4 (int time) {
 Sound_Play(330,time);
}


void ToneB3 (int time) {
 Sound_Play(247,time);
}


void D4 (int time) {
 Sound_Play(294,time);

}


void Gb4 (int time) {
 Sound_Play(370,time);
}


void C4 (int time) {
 Sound_Play(262,time);
}


void espacio () {
 Sound_Play(0,50);
}

void Delay_ms(const unsigned long time_in_ms);



void SquidGame (){
#line 72 "C:/Users/ronal/OneDrive/Documentos/Squid-Game/Sonidos/Sonidos_Game.c"
 ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio(); ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
 Eb5(300);espacio();ToneB4(300);espacio();ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();ToneB4(600);espacio();
 ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio(); ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
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

 ANSEL = 0;
 ANSELH = 0;
 C1ON_bit = 0;
 C2ON_bit = 0;

 TRISB = 0xF8;

 Sound_Init(&PORTC, 3);
 Sound_Play(500, 1000);

 while (1) {
 if (Button(&PORTB,7,1,1))
 Tone1();
 while (RB7_bit) ;

 if (Button(&PORTB,6,1,1))
 Tone2();
 while (RB6_bit) ;

 if (Button(&PORTB,5,1,1)){

 while (RB5_bit){
 Pink_Soldiers(550,250);
 }
 }

 if (Button(&PORTB,4,1,1)){

 while (RB4_bit){
 Red_Green();
 Delay_ms(500);
 }
 }

 if (Button(&PORTB,3,1,1)){

 while (RB3_bit){
 SquidGame();

 }
 }
 }
}
