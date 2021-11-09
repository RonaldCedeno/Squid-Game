
_Tone1:

;Sonidos_Game.c,1 :: 		void Tone1() {
;Sonidos_Game.c,2 :: 		Sound_Play(659, 250);   // Frequency = 659Hz, duration = 250ms
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,3 :: 		}
L_end_Tone1:
	RETURN
; end of _Tone1

_Tone2:

;Sonidos_Game.c,5 :: 		void Tone2() {
;Sonidos_Game.c,6 :: 		Sound_Play(698, 250);   // Frequency = 698Hz, duration = 250ms
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,7 :: 		}
L_end_Tone2:
	RETURN
; end of _Tone2

_ToneB4:

;Sonidos_Game.c,12 :: 		void ToneB4 (int time) {
;Sonidos_Game.c,13 :: 		Sound_Play(494,time);
	MOVLW      238
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_ToneB4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_ToneB4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,14 :: 		}
L_end_ToneB4:
	RETURN
; end of _ToneB4

_Eb5:

;Sonidos_Game.c,17 :: 		void Eb5 (int time) {
;Sonidos_Game.c,18 :: 		Sound_Play(622,time);
	MOVLW      110
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_Eb5_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_Eb5_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,19 :: 		}
L_end_Eb5:
	RETURN
; end of _Eb5

_A4:

;Sonidos_Game.c,22 :: 		void A4 (int time) {
;Sonidos_Game.c,23 :: 		Sound_Play(440,time);
	MOVLW      184
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_A4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_A4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,24 :: 		}
L_end_A4:
	RETURN
; end of _A4

_G4:

;Sonidos_Game.c,27 :: 		void G4 (int time) {
;Sonidos_Game.c,28 :: 		Sound_Play(392,time);
	MOVLW      136
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_G4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_G4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,29 :: 		}
L_end_G4:
	RETURN
; end of _G4

_E4:

;Sonidos_Game.c,32 :: 		void E4 (int time) {
;Sonidos_Game.c,33 :: 		Sound_Play(330,time);
	MOVLW      74
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_E4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_E4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,34 :: 		}
L_end_E4:
	RETURN
; end of _E4

_ToneB3:

;Sonidos_Game.c,37 :: 		void ToneB3 (int time) {
;Sonidos_Game.c,38 :: 		Sound_Play(247,time);
	MOVLW      247
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_ToneB3_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_ToneB3_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,39 :: 		}
L_end_ToneB3:
	RETURN
; end of _ToneB3

_D4:

;Sonidos_Game.c,42 :: 		void D4 (int time) {
;Sonidos_Game.c,43 :: 		Sound_Play(294,time);
	MOVLW      38
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_D4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_D4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,45 :: 		}
L_end_D4:
	RETURN
; end of _D4

_Gb4:

;Sonidos_Game.c,48 :: 		void Gb4 (int time) {
;Sonidos_Game.c,49 :: 		Sound_Play(370,time);
	MOVLW      114
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_Gb4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_Gb4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,50 :: 		}
L_end_Gb4:
	RETURN
; end of _Gb4

_C4:

;Sonidos_Game.c,53 :: 		void C4 (int time) {
;Sonidos_Game.c,54 :: 		Sound_Play(262,time);
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_C4_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_C4_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,55 :: 		}
L_end_C4:
	RETURN
; end of _C4

_F6:

;Sonidos_Game.c,57 :: 		void F6 (int time) {
;Sonidos_Game.c,58 :: 		Sound_Play(1397,time);
	MOVLW      117
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_F6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_F6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,59 :: 		}
L_end_F6:
	RETURN
; end of _F6

_GB6:

;Sonidos_Game.c,61 :: 		void GB6 (int time) {
;Sonidos_Game.c,62 :: 		Sound_Play(1480, time);
	MOVLW      200
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_GB6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_GB6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,63 :: 		}
L_end_GB6:
	RETURN
; end of _GB6

_G6:

;Sonidos_Game.c,65 :: 		void G6 (int time) {
;Sonidos_Game.c,66 :: 		Sound_Play(1568, time);
	MOVLW      32
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_G6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_G6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,67 :: 		}
L_end_G6:
	RETURN
; end of _G6

_Ab6:

;Sonidos_Game.c,69 :: 		void Ab6 (int time) {
;Sonidos_Game.c,70 :: 		Sound_Play(1661, time);
	MOVLW      125
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_Ab6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_Ab6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,71 :: 		}
L_end_Ab6:
	RETURN
; end of _Ab6

_A6:

;Sonidos_Game.c,73 :: 		void A6 (int time) {
;Sonidos_Game.c,74 :: 		Sound_Play(1760, time);
	MOVLW      224
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_A6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_A6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,75 :: 		}
L_end_A6:
	RETURN
; end of _A6

_ToneB6:

;Sonidos_Game.c,77 :: 		void ToneB6 (int time) {
;Sonidos_Game.c,78 :: 		Sound_Play(1976, time);
	MOVLW      184
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_ToneB6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_ToneB6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,79 :: 		}
L_end_ToneB6:
	RETURN
; end of _ToneB6

_C6:

;Sonidos_Game.c,81 :: 		void C6 (int time) {
;Sonidos_Game.c,82 :: 		Sound_Play(1047, time);
	MOVLW      23
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       FARG_C6_time+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       FARG_C6_time+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,83 :: 		}
L_end_C6:
	RETURN
; end of _C6

_espacio:

;Sonidos_Game.c,86 :: 		void espacio () {
;Sonidos_Game.c,87 :: 		Sound_Play(0,50);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,88 :: 		}
L_end_espacio:
	RETURN
; end of _espacio

_Inicio:

;Sonidos_Game.c,93 :: 		void Inicio (int time){
;Sonidos_Game.c,94 :: 		F6(time);GB6(time);G6(time);Ab6(time);A6(time);ToneB6(time);C6(time);
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_F6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_F6_time+1
	CALL       _F6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_GB6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_GB6_time+1
	CALL       _GB6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_G6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_G6_time+1
	CALL       _G6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_Ab6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_Ab6_time+1
	CALL       _Ab6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_A6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_A6_time+1
	CALL       _A6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_ToneB6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_ToneB6_time+1
	CALL       _ToneB6+0
	MOVF       FARG_Inicio_time+0, 0
	MOVWF      FARG_C6_time+0
	MOVF       FARG_Inicio_time+1, 0
	MOVWF      FARG_C6_time+1
	CALL       _C6+0
;Sonidos_Game.c,95 :: 		}
L_end_Inicio:
	RETURN
; end of _Inicio

_SquidGame:

;Sonidos_Game.c,98 :: 		void SquidGame (){
;Sonidos_Game.c,104 :: 		ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_ToneB4_time+0
	MOVLW      2
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_ToneB4_time+0
	MOVLW      2
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
;Sonidos_Game.c,105 :: 		Eb5(300);espacio();ToneB4(300);espacio();ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();ToneB4(600);espacio();
	MOVLW      44
	MOVWF      FARG_Eb5_time+0
	MOVLW      1
	MOVWF      FARG_Eb5_time+1
	CALL       _Eb5+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_A4_time+0
	MOVLW      1
	MOVWF      FARG_A4_time+1
	CALL       _A4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_G4_time+0
	MOVLW      1
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_A4_time+0
	MOVLW      1
	MOVWF      FARG_A4_time+1
	CALL       _A4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_ToneB4_time+0
	MOVLW      2
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
;Sonidos_Game.c,106 :: 		ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_ToneB4_time+0
	MOVLW      2
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_ToneB4_time+0
	MOVLW      2
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
;Sonidos_Game.c,107 :: 		ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();G4(300);espacio();E4(300);espacio();E4(600);espacio();
	MOVLW      44
	MOVWF      FARG_ToneB4_time+0
	MOVLW      1
	MOVWF      FARG_ToneB4_time+1
	CALL       _ToneB4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_A4_time+0
	MOVLW      1
	MOVWF      FARG_A4_time+1
	CALL       _A4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_G4_time+0
	MOVLW      1
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_A4_time+0
	MOVLW      1
	MOVWF      FARG_A4_time+1
	CALL       _A4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_G4_time+0
	MOVLW      1
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	CALL       _espacio+0
	MOVLW      44
	MOVWF      FARG_E4_time+0
	MOVLW      1
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	CALL       _espacio+0
	MOVLW      88
	MOVWF      FARG_E4_time+0
	MOVLW      2
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	CALL       _espacio+0
;Sonidos_Game.c,108 :: 		}
L_end_SquidGame:
	RETURN
; end of _SquidGame

_Red_Green:

;Sonidos_Game.c,110 :: 		void Red_Green() {
;Sonidos_Game.c,111 :: 		ToneB3(300);E4(300);E4(600);E4(600);D4(650);
	MOVLW      44
	MOVWF      FARG_ToneB3_time+0
	MOVLW      1
	MOVWF      FARG_ToneB3_time+1
	CALL       _ToneB3+0
	MOVLW      44
	MOVWF      FARG_E4_time+0
	MOVLW      1
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVLW      88
	MOVWF      FARG_E4_time+0
	MOVLW      2
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVLW      88
	MOVWF      FARG_E4_time+0
	MOVLW      2
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVLW      138
	MOVWF      FARG_D4_time+0
	MOVLW      2
	MOVWF      FARG_D4_time+1
	CALL       _D4+0
;Sonidos_Game.c,112 :: 		E4(300);E4(300);ToneB3(300);ToneB3(300);D4(650);
	MOVLW      44
	MOVWF      FARG_E4_time+0
	MOVLW      1
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVLW      44
	MOVWF      FARG_E4_time+0
	MOVLW      1
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVLW      44
	MOVWF      FARG_ToneB3_time+0
	MOVLW      1
	MOVWF      FARG_ToneB3_time+1
	CALL       _ToneB3+0
	MOVLW      44
	MOVWF      FARG_ToneB3_time+0
	MOVLW      1
	MOVWF      FARG_ToneB3_time+1
	CALL       _ToneB3+0
	MOVLW      138
	MOVWF      FARG_D4_time+0
	MOVLW      2
	MOVWF      FARG_D4_time+1
	CALL       _D4+0
;Sonidos_Game.c,113 :: 		}
L_end_Red_Green:
	RETURN
; end of _Red_Green

_main:

;Sonidos_Game.c,115 :: 		void main() {
;Sonidos_Game.c,117 :: 		ANSEL  = 0;                        // Configure AN pins as digital
	CLRF       ANSEL+0
;Sonidos_Game.c,118 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Sonidos_Game.c,119 :: 		C1ON_bit = 0;                      // Disable comparators
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;Sonidos_Game.c,120 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;Sonidos_Game.c,122 :: 		TRISA  = 0xFF;                     // Configure RB7..RB3 as input    1111 1000
	MOVLW      255
	MOVWF      TRISA+0
;Sonidos_Game.c,125 :: 		Sound_Init(&PORTC, 3);
	MOVLW      PORTC+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      3
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;Sonidos_Game.c,127 :: 		Inicio(130);
	MOVLW      130
	MOVWF      FARG_Inicio_time+0
	CLRF       FARG_Inicio_time+1
	CALL       _Inicio+0
;Sonidos_Game.c,129 :: 		while (1) {
L_main0:
;Sonidos_Game.c,131 :: 		if (Button(&PORTB,0,1,1)){        // RB0 plays "Red Light Green Light"
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
;Sonidos_Game.c,133 :: 		while (RB0_bit){
L_main3:
	BTFSS      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main4
;Sonidos_Game.c,134 :: 		Red_Green();
	CALL       _Red_Green+0
;Sonidos_Game.c,135 :: 		Delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Sonidos_Game.c,136 :: 		}
	GOTO       L_main3
L_main4:
;Sonidos_Game.c,137 :: 		}
L_main2:
;Sonidos_Game.c,139 :: 		if (Button(&PORTB,1,1,1)){        // RB1 plays a CLICK
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;Sonidos_Game.c,140 :: 		A4(200);
	MOVLW      200
	MOVWF      FARG_A4_time+0
	CLRF       FARG_A4_time+1
	CALL       _A4+0
;Sonidos_Game.c,141 :: 		}
L_main6:
;Sonidos_Game.c,143 :: 		if (Button(&PORTB,2,1,1)){        // RB2 plays "Way back then"
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main7
;Sonidos_Game.c,145 :: 		while (RB2_bit){
L_main8:
	BTFSS      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main9
;Sonidos_Game.c,146 :: 		SquidGame();
	CALL       _SquidGame+0
;Sonidos_Game.c,148 :: 		}
	GOTO       L_main8
L_main9:
;Sonidos_Game.c,149 :: 		}
L_main7:
;Sonidos_Game.c,151 :: 		if (Button(&PORTB,3,1,1)){        // RB3 plays
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main10
;Sonidos_Game.c,153 :: 		while (RB3_bit){
L_main11:
	BTFSS      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main12
;Sonidos_Game.c,154 :: 		SquidGame();
	CALL       _SquidGame+0
;Sonidos_Game.c,156 :: 		}
	GOTO       L_main11
L_main12:
;Sonidos_Game.c,157 :: 		}
L_main10:
;Sonidos_Game.c,159 :: 		if (Button(&PORTB,4,1,1)){        // RB4 plays
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main13
;Sonidos_Game.c,161 :: 		while (RB4_bit){
L_main14:
	BTFSS      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main15
;Sonidos_Game.c,162 :: 		SquidGame();
	CALL       _SquidGame+0
;Sonidos_Game.c,163 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;Sonidos_Game.c,164 :: 		}
	GOTO       L_main14
L_main15:
;Sonidos_Game.c,165 :: 		}
L_main13:
;Sonidos_Game.c,167 :: 		if (Button(&PORTB,5,1,1)){       // RB5 plays
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      5
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main17
;Sonidos_Game.c,169 :: 		while (RB5_bit){
L_main18:
	BTFSS      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main19
;Sonidos_Game.c,171 :: 		}
	GOTO       L_main18
L_main19:
;Sonidos_Game.c,172 :: 		}
L_main17:
;Sonidos_Game.c,174 :: 		if (Button(&PORTB,6,1,1))        // RB6 plays Tone2
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      6
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
;Sonidos_Game.c,175 :: 		Tone2();
	CALL       _Tone2+0
L_main20:
;Sonidos_Game.c,176 :: 		while (RB6_bit) ;                // Wait for button to be released
L_main21:
	BTFSS      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main22
	GOTO       L_main21
L_main22:
;Sonidos_Game.c,178 :: 		if (Button(&PORTB,7,1,1))        // RB7 plays Tone1
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main23
;Sonidos_Game.c,179 :: 		Tone1();
	CALL       _Tone1+0
L_main23:
;Sonidos_Game.c,180 :: 		while (RB7_bit) ;                // Wait for button to be released
L_main24:
	BTFSS      RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main25
	GOTO       L_main24
L_main25:
;Sonidos_Game.c,181 :: 		}
	GOTO       L_main0
;Sonidos_Game.c,182 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
