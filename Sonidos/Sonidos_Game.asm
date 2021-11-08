
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

_espacio:

;Sonidos_Game.c,58 :: 		void espacio () {
;Sonidos_Game.c,59 :: 		Sound_Play(0,50);
	CLRF       FARG_Sound_Play_freq_in_hz+0
	CLRF       FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,60 :: 		}
L_end_espacio:
	RETURN
; end of _espacio

_SquidGame:

;Sonidos_Game.c,66 :: 		void SquidGame (){
;Sonidos_Game.c,72 :: 		ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
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
;Sonidos_Game.c,73 :: 		Eb5(300);espacio();ToneB4(300);espacio();ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();ToneB4(600);espacio();
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
;Sonidos_Game.c,74 :: 		ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();   ToneB4(300);espacio();ToneB4(300);espacio();ToneB4(600);espacio();
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
;Sonidos_Game.c,75 :: 		ToneB4(300);espacio();A4(300);espacio();G4(300);espacio();A4(300);espacio();G4(300);espacio();E4(300);espacio();E4(600);espacio();
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
;Sonidos_Game.c,76 :: 		}
L_end_SquidGame:
	RETURN
; end of _SquidGame

_Red_Green:

;Sonidos_Game.c,78 :: 		void Red_Green() {
;Sonidos_Game.c,79 :: 		ToneB3(300);E4(300);E4(600);E4(600);D4(650);
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
;Sonidos_Game.c,80 :: 		E4(300);E4(300);ToneB3(300);ToneB3(300);D4(650);
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
;Sonidos_Game.c,81 :: 		}
L_end_Red_Green:
	RETURN
; end of _Red_Green

_Pink_Soldiers:

;Sonidos_Game.c,83 :: 		void Pink_Soldiers(int t1, int t2){
;Sonidos_Game.c,84 :: 		G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,85 :: 		G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,86 :: 		G4(t1);C4(t1);G4(t1);C4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,87 :: 		G4(t1);E4(t1);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,88 :: 		G4(t1);E4(t2);C4(t2);G4(t1);GB4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,89 :: 		G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,90 :: 		G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,91 :: 		G4(t1);E4(t2);C4(t2);G4(t1);E4(t1);G4(t1);GB4(t1);G4(t1);GB4(t1);
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t2+0, 0
	MOVWF      FARG_C4_time+0
	MOVF       FARG_Pink_Soldiers_t2+1, 0
	MOVWF      FARG_C4_time+1
	CALL       _C4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_E4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_E4_time+1
	CALL       _E4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_G4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_G4_time+1
	CALL       _G4+0
	MOVF       FARG_Pink_Soldiers_t1+0, 0
	MOVWF      FARG_Gb4_time+0
	MOVF       FARG_Pink_Soldiers_t1+1, 0
	MOVWF      FARG_Gb4_time+1
	CALL       _Gb4+0
;Sonidos_Game.c,92 :: 		}
L_end_Pink_Soldiers:
	RETURN
; end of _Pink_Soldiers

_main:

;Sonidos_Game.c,94 :: 		void main() {
;Sonidos_Game.c,96 :: 		ANSEL  = 0;                        // Configure AN pins as digital
	CLRF       ANSEL+0
;Sonidos_Game.c,97 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Sonidos_Game.c,98 :: 		C1ON_bit = 0;                      // Disable comparators
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;Sonidos_Game.c,99 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;Sonidos_Game.c,101 :: 		TRISB  = 0xF8;                     // Configure RB7..RB3 as input
	MOVLW      248
	MOVWF      TRISB+0
;Sonidos_Game.c,103 :: 		Sound_Init(&PORTC, 3);
	MOVLW      PORTC+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      3
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;Sonidos_Game.c,104 :: 		Sound_Play(500, 1000);             // Play sound at 880Hz for 1 second
	MOVLW      244
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos_Game.c,106 :: 		while (1) {
L_main0:
;Sonidos_Game.c,107 :: 		if (Button(&PORTB,7,1,1))        // RB7 plays Tone1
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
	GOTO       L_main2
;Sonidos_Game.c,108 :: 		Tone1();
	CALL       _Tone1+0
L_main2:
;Sonidos_Game.c,109 :: 		while (RB7_bit) ;                // Wait for button to be released
L_main3:
	BTFSS      RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main4
	GOTO       L_main3
L_main4:
;Sonidos_Game.c,111 :: 		if (Button(&PORTB,6,1,1))        // RB6 plays Tone2
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
	GOTO       L_main5
;Sonidos_Game.c,112 :: 		Tone2();
	CALL       _Tone2+0
L_main5:
;Sonidos_Game.c,113 :: 		while (RB6_bit) ;                // Wait for button to be released
L_main6:
	BTFSS      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main7
	GOTO       L_main6
L_main7:
;Sonidos_Game.c,115 :: 		if (Button(&PORTB,5,1,1)){       // RB5 plays "Pink Soldiers"
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
	GOTO       L_main8
;Sonidos_Game.c,117 :: 		while (RB5_bit){
L_main9:
	BTFSS      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main10
;Sonidos_Game.c,118 :: 		Pink_Soldiers(550,250);
	MOVLW      38
	MOVWF      FARG_Pink_Soldiers_t1+0
	MOVLW      2
	MOVWF      FARG_Pink_Soldiers_t1+1
	MOVLW      250
	MOVWF      FARG_Pink_Soldiers_t2+0
	CLRF       FARG_Pink_Soldiers_t2+1
	CALL       _Pink_Soldiers+0
;Sonidos_Game.c,119 :: 		}
	GOTO       L_main9
L_main10:
;Sonidos_Game.c,120 :: 		}
L_main8:
;Sonidos_Game.c,122 :: 		if (Button(&PORTB,4,1,1)){        // RB4 plays "Red Light Green Light"
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
	GOTO       L_main11
;Sonidos_Game.c,124 :: 		while (RB4_bit){
L_main12:
	BTFSS      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main13
;Sonidos_Game.c,125 :: 		Red_Green();
	CALL       _Red_Green+0
;Sonidos_Game.c,126 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;Sonidos_Game.c,127 :: 		}
	GOTO       L_main12
L_main13:
;Sonidos_Game.c,128 :: 		}
L_main11:
;Sonidos_Game.c,130 :: 		if (Button(&PORTB,3,1,1)){        // RB3 plays "Way back then"
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
	GOTO       L_main15
;Sonidos_Game.c,132 :: 		while (RB3_bit){
L_main16:
	BTFSS      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main17
;Sonidos_Game.c,133 :: 		SquidGame();
	CALL       _SquidGame+0
;Sonidos_Game.c,135 :: 		}
	GOTO       L_main16
L_main17:
;Sonidos_Game.c,136 :: 		}
L_main15:
;Sonidos_Game.c,137 :: 		}
	GOTO       L_main0
;Sonidos_Game.c,138 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
