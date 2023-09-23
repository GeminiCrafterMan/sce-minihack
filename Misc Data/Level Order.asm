; ---------------------------------------------------------------------------
; Level order array
; ---------------------------------------------------------------------------
LevelOrder:
	; DEZ
		dc.b z_DEZ, 1	; DEZ1
		dc.b z_DEZ, 2	; DEZ2
		dc.b z_DEZ, 3	; DEZ3
		dc.b z_TL,	0	; DEZ4
	; Test Levels
		dc.b z_TL,	1	; GHZ
		dc.b z_TL,	2	; EHZ
		dc.b z_DEZ, 3	; DEZ3
		dc.b z_DEZ,	0	; DEZ4
	zonewarning	LevelOrder,(4*2)