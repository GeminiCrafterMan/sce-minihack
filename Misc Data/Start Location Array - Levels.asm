; ===========================================================================
; Sonic start location array
; ===========================================================================

StartLocArray:
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 1
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 2
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 3
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 4

		binclude "Levels/GHZ/Start Location/EX.bin"	; GHZ EX
		binclude "Levels/EHZ/Start Location/1.bin"	; EHZ EX
		binclude "Levels/SLZ/Start Location/1.bin"	; SLZ EX
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 4

		zonewarning StartLocArray,(4*4)