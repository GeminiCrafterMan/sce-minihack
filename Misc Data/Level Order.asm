; ---------------------------------------------------------------------------
; Level order array
; ---------------------------------------------------------------------------
LevelOrder:
	; Stuff
		dc.b z_DEZ, 1	; DEZ1
		dc.b z_DEZ, 2	; DEZ2
		dc.b z_DEZ, 3	; DEZ3
		dc.b 0, 0		; GHZ
	zonewarning	LevelOrder,(4*2)