; ===========================================================================
; Levels Data
; ===========================================================================

		;		1st 8x8 data		1st 16x16 data		1st 128x128 data	palette
LevelLoadBlock:
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ1
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ2
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ3
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ4

		levartptrs GHZEX_8x8_KosM, GHZEX_16x16_Unc, GHZEX_128x128_Kos, palid_GHZEX		; GHZ EX
		levartptrs EHZEX_8x8_KosM, EHZEX_16x16_Unc, EHZEX_128x128_Kos, palid_EHZEX		; EHZ EX
		levartptrs SLZEX_8x8_KosM, SLZEX_16x16_Unc, SLZEX_128x128_Kos, palid_SLZEX		; SLZ EX
		levartptrs DEZ_8x8_KosM, DEZ_16x16_Unc, DEZ_128x128_Kos, palid_DEZ		; DEZ4

		zonewarning LevelLoadBlock,(12*4)

; ===========================================================================
; Levels Pointer Data
; ===========================================================================

LevelLoadPointer:

; DEZ1
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l DEZ_DoAniPLC, AniPLC_DEZ											; Animate tiles main code, Animate tiles PLC scripts

; DEZ2
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l DEZ_DoAniPLC, AniPLC_DEZ

; DEZ3
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l DEZ_DoAniPLC, AniPLC_DEZ

; DEZ4
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l DEZ_DoAniPLC, AniPLC_DEZ

; Green Hill EX
		dc.l AnPal_GHZ, DLE_GHZEX, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l GHZ1_ScreenInit, GHZ1_BackgroundInit, GHZ1_ScreenEvent, GHZ1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_GHZ											; Animate tiles main code, Animate tiles PLC scripts

; Emerald Hill EX
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null					; Animate Palette, Resize, WaterResize, AfterBoss
		dc.l EHZ1_ScreenInit, EHZ1_BackgroundInit, EHZ1_ScreenEvent, EHZ1_BackgroundEvent	; ScreenInit, BackgroundInit, ScreenEvent, BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null											; Animate tiles main code, Animate tiles PLC scripts

; Star Light EX
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l SLZ1_ScreenInit, SLZ1_BackgroundInit, SLZ1_ScreenEvent, SLZ1_BackgroundEvent
		dc.l LevelPointer_Null, LevelPointer_Null

; DEZ4
		dc.l LevelPointer_Null, LevelPointer_Null, LevelPointer_Null, LevelPointer_Null
		dc.l DEZ1_ScreenInit, DEZ1_BackgroundInit, DEZ1_ScreenEvent, DEZ1_BackgroundEvent
		dc.l AnimateTiles_DoAniPLC, AniPLC_DEZ

		zonewarning LevelLoadPointer,(40*4)

; ===========================================================================
; Collision index pointers
; ===========================================================================

SolidIndexes:
		dc.l DEZ1_Solid		; DEZ1
		dc.l DEZ1_Solid		; DEZ2
		dc.l DEZ1_Solid		; DEZ3
		dc.l DEZ1_Solid		; DEZ4
		dc.l GHZEX_Solid	; GHZ EX
		dc.l EHZEX_Solid	; EHZ EX
		dc.l SLZEX_Solid		; DEZ3
		dc.l DEZ1_Solid		; DEZ4

		zonewarning SolidIndexes,(4*4)

; ===========================================================================
; Level layout index
; ===========================================================================

LevelPtrs:
		dc.l DEZ1_Layout		; DEZ1
		dc.l DEZ1_Layout		; DEZ2
		dc.l DEZ1_Layout		; DEZ3
		dc.l DEZ1_Layout		; DEZ4
		dc.l GHZEX_Layout		; GHZ EX
		dc.l EHZEX_Layout		; GHZ EX
		dc.l SLZEX_Layout		; DEZ3
		dc.l DEZ1_Layout		; DEZ4

		zonewarning LevelPtrs,(4*4)

; ===========================================================================
; Sprite locations index
; ===========================================================================

SpriteLocPtrs:
		dc.l DEZ1_Sprites	; DEZ1
		dc.l DEZ1_Sprites	; DEZ2
		dc.l DEZ1_Sprites	; DEZ3
		dc.l DEZ1_Sprites	; DEZ4
		dc.l GHZEX_Sprites	; GHZ EX
		dc.l EHZEX_Sprites	; EHZ EX
		dc.l SLZEX_Sprites	; DEZ3
		dc.l DEZ1_Sprites	; DEZ4

		zonewarning SpriteLocPtrs,(4*4)

; ===========================================================================
; Ring locations index
; ===========================================================================

RingLocPtrs:
		dc.l DEZ1_Rings		; DEZ1
		dc.l DEZ1_Rings		; DEZ2
		dc.l DEZ1_Rings		; DEZ3
		dc.l DEZ1_Rings		; DEZ4
		dc.l GHZEX_Rings	; GHZ EX
		dc.l EHZEX_Rings	; EHZ EX
		dc.l SLZEX_Rings		; DEZ3
		dc.l DEZ1_Rings		; DEZ4

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

EHZEX_8x8_KosM:		binclude "Levels/EHZ/Tiles/Primary.bin"
	even
EHZEX_16x16_Unc:	binclude "Levels/EHZ/Blocks/Primary.bin"
	even
EHZEX_128x128_Kos:	binclude "Levels/EHZ/Chunks/Primary.bin"
	even

SLZEX_8x8_KosM:		binclude "Levels/SLZ/Tiles/Primary.bin"
	even
SLZEX_16x16_Unc:	binclude "Levels/SLZ/Blocks/Primary.bin"
	even
SLZEX_128x128_Kos:	binclude "Levels/SLZ/Chunks/Primary.bin"
	even

; ===========================================================================
; Collision data
; ===========================================================================

S1AngleArray:		binclude "Misc Data/Collision/S1 Angle Map.bin"
	even
S1HeightMaps:		binclude "Misc Data/Collision/S1 Height Maps.bin"
	even
S1HeightMapsRot:	binclude "Misc Data/Collision/S1 Height Maps Rotated.bin"
	even
S2AngleArray:		binclude "Misc Data/Collision/S2 Angle Map.bin"
	even
S2HeightMaps:		binclude "Misc Data/Collision/S2 Height Maps.bin"
	even
S2HeightMapsRot:	binclude "Misc Data/Collision/S2 Height Maps Rotated.bin"
	even
S3KAngleArray:		binclude "Misc Data/Collision/S3K Angle Map.bin"
	even
S3KHeightMaps:		binclude "Misc Data/Collision/S3K Height Maps.bin"
	even
S3KHeightMapsRot:	binclude "Misc Data/Collision/S3K Height Maps Rotated.bin"
	even

; ===========================================================================
; Level collision data
; ===========================================================================

DEZ1_Solid:			binclude "Levels/DEZ/Collision/1.bin"
	even
GHZEX_Solid:		binclude "Levels/GHZ/Collision/EX.bin"
	even
EHZEX_Solid:		binclude "Levels/EHZ/Collision/1.bin"
	even
SLZEX_Solid:		binclude "Levels/SLZ/Collision/1.bin"
	even

; ===========================================================================
; Level layout data
; ===========================================================================

DEZ1_Layout:		binclude "Levels/DEZ/Layout/1.bin"
	even
GHZEX_Layout:		binclude "Levels/GHZ/Layout/EX.bin"
	even
EHZEX_Layout:		binclude "Levels/EHZ/Layout/1.bin"
	even
SLZEX_Layout:		binclude "Levels/SLZ/Layout/1.bin"
	even

; ===========================================================================
; Level object data
; ===========================================================================

	ObjectLayoutBoundary
DEZ1_Sprites:		binclude "Levels/DEZ/Object Pos/1.bin"
	ObjectLayoutBoundary
GHZEX_Sprites:		binclude "Levels/GHZ/Object Pos/EX.bin"
	ObjectLayoutBoundary
EHZEX_Sprites:		binclude "Levels/EHZ/Object Pos/1.bin"
	ObjectLayoutBoundary
SLZEX_Sprites:		binclude "Levels/SLZ/Object Pos/1.bin"
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
EHZEX_Rings:		binclude "Levels/EHZ/Ring Pos/1.bin"
	RingLayoutBoundary
SLZEX_Rings:		binclude "Levels/SLZ/Ring Pos/1.bin"
	RingLayoutBoundary
	even
