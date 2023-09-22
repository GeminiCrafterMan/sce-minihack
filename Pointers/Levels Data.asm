; ===========================================================================
; Levels Data
; ===========================================================================

		;		1st 8x8 data		1st 16x16 data		1st 128x128 data	palette
LevelLoadBlock:
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ1
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ2
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ3
		levartptrs GHZEX_8x8_KosM, GHZEX_16x16_Unc, GHZEX_128x128_Kos, palid_GHZEX		; GHZ EX

		zonewarning LevelLoadBlock,(12*4)

; ===========================================================================
; Levels Pointer Data
; ===========================================================================

LevelLoadPointer:

; DEZ1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_DEZ											; Animate tiles main code, Animate tiles PLC scripts

; DEZ2
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_DEZ

; DEZ3
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_DEZ

; Green Hill EX
		dc.l AnPal_GHZ, DLE_GHZEX, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l GHZ1_ScreenInit, GHZ1_BackgroundInit, GHZ1_ScreenEvent, GHZ1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_GHZ											; Animate tiles main code, Animate tiles PLC scripts

		zonewarning LevelLoadPointer,(40*4)

; ===========================================================================
; Collision index pointers
; ===========================================================================

SolidIndexes:
		dc.l DEZ1_Solid		; DEZ1
		dc.l DEZ1_Solid		; DEZ2
		dc.l DEZ1_Solid		; DEZ3
		dc.l GHZEX_Solid		; GHZ EX

		zonewarning SolidIndexes,(4*4)

; ===========================================================================
; Level layout index
; ===========================================================================

LevelPtrs:
		dc.l DEZ1_Layout		; DEZ1
		dc.l DEZ1_Layout		; DEZ2
		dc.l DEZ1_Layout		; DEZ3
		dc.l GHZEX_Layout		; DEZ4

		zonewarning LevelPtrs,(4*4)

; ===========================================================================
; Sprite locations index
; ===========================================================================

SpriteLocPtrs:
		dc.l DEZ1_Sprites		; DEZ1
		dc.l DEZ1_Sprites		; DEZ2
		dc.l DEZ1_Sprites		; DEZ3
		dc.l GHZEX_Sprites		; DEZ4

		zonewarning SpriteLocPtrs,(4*4)

; ===========================================================================
; Ring locations index
; ===========================================================================

RingLocPtrs:
		dc.l DEZ1_Rings		; DEZ1
		dc.l DEZ1_Rings		; DEZ2
		dc.l DEZ1_Rings		; DEZ3
		dc.l GHZEX_Rings		; DEZ4

		zonewarning RingLocPtrs,(4*4)

; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

DEZ_8x8_KosM:		binclude "Levels/DEZ/Tiles/Primary.bin"
	even
DEZ_16x16_Unc:		binclude "Levels/DEZ/Blocks/Primary.bin"
	even
DEZ_128x128_Kos:	binclude "Levels/DEZ/Chunks/Primary.bin"
	even

GHZEX_8x8_KosM:		binclude "Levels/GHZ/Tiles/Secondary.bin"
	even
GHZEX_16x16_Unc:	binclude "Levels/GHZ/Blocks/Secondary.bin"
	even
GHZEX_128x128_Kos:	binclude "Levels/GHZ/Chunks/Secondary.bin"
	even

; ===========================================================================
; Collision data
; ===========================================================================

AngleArray:			binclude "Misc Data/Angle Map.bin"
	even
HeightMaps:			binclude "Misc Data/Height Maps.bin"
	even
HeightMapsRot:		binclude "Misc Data/Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

DEZ1_Solid:			binclude "Levels/DEZ/Collision/1.bin"
	even
GHZEX_Solid:		binclude "Levels/GHZ/Collision/EX.bin"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

DEZ1_Layout:		binclude "Levels/DEZ/Layout/1.bin"
	even
GHZEX_Layout:		binclude "Levels/GHZ/Layout/EX.bin"
	even

; ===========================================================================
; Level object data
; ===========================================================================

	ObjectLayoutBoundary
DEZ1_Sprites:		binclude "Levels/DEZ/Object Pos/1.bin"
	ObjectLayoutBoundary
GHZEX_Sprites:		binclude "Levels/GHZ/Object Pos/EX.bin"
	ObjectLayoutBoundary
	even

; ===========================================================================
; Level ring data
; ===========================================================================

	RingLayoutBoundary
DEZ1_Rings:			binclude "Levels/DEZ/Ring Pos/1.bin"
	RingLayoutBoundary
GHZEX_Rings:		binclude "Levels/GHZ/Ring Pos/EX.bin"
	RingLayoutBoundary
	even
