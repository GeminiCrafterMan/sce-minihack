; ===========================================================================
; Level Size Array
; ===========================================================================

;		xstart, xend, ystart, yend			; Level
LevelSizes:
		dc.w 0, $A20, 0, $4A0				; DEZ 1
		dc.w 0, $A20, 0, $4A0				; DEZ 2
		dc.w 0, $A20, 0, $4A0				; DEZ 3
		dc.w 0, $6D60, 0, $300				; GHZ EX

		zonewarning LevelSizes,(8*4)