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

void F6 (int time) {
 Sound_Play(1397,time);
}

void GB6 (int time) {
 Sound_Play(1480, time);
}

void G6 (int time) {
 Sound_Play(1568, time);
}

void Ab6 (int time) {
 Sound_Play(1661, time);
}

void A6 (int time) {
 Sound_Play(1760, time);
}

void ToneB6 (int time) {
 Sound_Play(1976, time);
}

void C6 (int time) {
 Sound_Play(1047, time);
}


void espacio () {
 Sound_Play(0,50);
}

void Delay_ms(const unsigned long time_in_ms);


void Inicio (int time){
 F6(time);GB6(time);G6(time);Ab6(time);A6(time);ToneB6(time);C6(time);
}


void SquidGame (){
#line 104 "C:/Users/ronal/OneDrive/Documentos/Squid-Game/Sonidos/Sonidos_Game.c"
 ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio(); ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
 Eb5(300);espacio();ToneB4(300);espacio();ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();ToneB4(600);espacio();
 ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio(); ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
 ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();G4(300);espacio();E4(300);espacio();E4(600);espacio();
}

void Red_Green() {
 ToneB3(300);E4(300);E4(600);E4(600);D4(650);
 E4(300);E4(300);ToneB3(300);ToneB3(300);D4(650);
}

void main() {

 ANSEL = 0;
 ANSELH = 0;
 C1ON_bit = 0;
 C2ON_bit = 0;

 TRISA = 0xFF;


 Sound_Init(&PORTC, 3);

 Inicio(130);

 while (1) {

 if (Button(&PORTB,0,1,1)){

 while (RB0_bit){
 Red_Green();
 Delay_ms(250);
 }
 }

 if (Button(&PORTB,1,1,1)){
 A4(200);
 }

 if (Button(&PORTB,2,1,1)){

 while (RB2_bit){
 SquidGame();

 }
 }

 if (Button(&PORTB,3,1,1)){

 while (RB3_bit){
 SquidGame();

 }
 }

 if (Button(&PORTB,4,1,1)){

 while (RB4_bit){
 SquidGame();
 Delay_ms(500);
 }
 }

 if (Button(&PORTB,5,1,1)){

 while (RB5_bit){

 }
 }

 if (Button(&PORTB,6,1,1))
 Tone2();
 while (RB6_bit) ;

 if (Button(&PORTB,7,1,1))
 Tone1();
 while (RB7_bit) ;
 }
}
