; ===========================================================================
; Sonic start location array
; ===========================================================================

StartLocArray:
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 1
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 2
		binclude "Levels/DEZ/Start Location/1.bin"	; DEZ 3
		binclude "Levels/GHZ/Start Location/EX.bin"	; GHZ EX

		zonewarning StartLocArray,(4*4)