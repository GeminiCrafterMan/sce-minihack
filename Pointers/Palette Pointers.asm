; ===========================================================================
; Palette pointers
; ===========================================================================

PalPointers:				; palette address, RAM address, colours

; Main
ptr_Pal_Sonic:			palp	Pal_Sonic, Normal_palette_line_1, 16
ptr_Pal_WaterSonic:		palp	Pal_WaterSonic, Water_palette_line_1, 16
ptr_Pal_Knuckles:		palp	Pal_Knuckles, Normal_palette_line_1, 16
ptr_Pal_WaterKnuckles:	palp	Pal_WaterKnuckles, Water_palette_line_1, 16

; Levels
ptr_Pal_DEZ:			palp	Pal_DEZ, Normal_palette_line_2, 48
ptr_Pal_WaterDEZ:		palp	Pal_WaterDEZ, Water_palette_line_2, 48
ptr_Pal_BGZ:			palp	Pal_BGZ, Normal_palette_line_2, 48
ptr_Pal_WaterBGZ:		palp	Pal_WaterBGZ, Water_palette_line_2, 48
ptr_Pal_GHZEX:			palp	Pal_GHZEX, Normal_palette_line_2, 48
ptr_Pal_EHZEX:			palp	Pal_EHZEX, Normal_palette_line_2, 48
ptr_Pal_SLZEX:			palp	Pal_SLZEX, Normal_palette_line_2, 48

; Menus
ptr_Pal_LSSonic:		palp	Pal_Sonic, Normal_palette_line_4, 16
ptr_Pal_LSKnuckles:		palp	Pal_Knuckles, Normal_palette_line_4, 16
; ---------------------------------------------------------------------------

; Main
palid_Sonic:			equ (ptr_Pal_Sonic-PalPointers)/8
palid_WaterSonic:		equ (ptr_Pal_WaterSonic-PalPointers)/8
palid_Knuckles:			equ (ptr_Pal_Knuckles-PalPointers)/8
palid_WaterKnuckles:	equ (ptr_Pal_WaterKnuckles-PalPointers)/8

; Levels
palid_DEZ:				equ (ptr_Pal_DEZ-PalPointers)/8
palid_WaterDEZ:			equ (ptr_Pal_WaterDEZ-PalPointers)/8
palid_BGZ:				equ (ptr_Pal_BGZ-PalPointers)/8
palid_WaterBGZ:			equ (ptr_Pal_WaterBGZ-PalPointers)/8
palid_GHZEX:			equ (ptr_Pal_GHZEX-PalPointers)/8
palid_EHZEX:			equ (ptr_Pal_EHZEX-PalPointers)/8
palid_SLZEX:			equ (ptr_Pal_SLZEX-PalPointers)/8

; Menus
palid_LSSonic:			equ (ptr_Pal_LSSonic-PalPointers)/8
palid_LSKnuckles:		equ (ptr_Pal_LSKnuckles-PalPointers)/8