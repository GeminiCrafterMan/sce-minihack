; ===========================================================================
; Uncompressed graphics
; ===========================================================================

ArtUnc_Ring:		binclude "Objects/Rings/Uncompressed Art/Rings.bin"
ArtUnc_Ring_end
	even
ArtUnc_Hud:			binclude "Objects/HUD/Uncompressed Art/HUD Numbers.bin"
	even
ArtUnc_DebugText:	binclude "Objects/HUD/Uncompressed Art/Debug Numbers.bin"
	even
ArtUnc_EndSigns:	binclude "Objects/Signpost/Uncompressed Art/End Signs.bin"
	even
ArtUnc_SuperSonic_Stars:	binclude	"Objects/Player Characters/Uncompressed Art/Super Sonic stars.bin"
	even

; ===========================================================================
; Animated uncompressed graphics
; ===========================================================================
; Death Egg
Art_DEZFan:					binclude "Levels/DEZ/Animated Tiles/Uncompressed Art/Fan.bin"
	even
Art_DEZAcid1:				binclude "Levels/DEZ/Animated Tiles/Uncompressed Art/Acid Surface.bin"
	even
Art_DEZAcid2:				binclude "Levels/DEZ/Animated Tiles/Uncompressed Art/Acid.bin"
	even
	align $800
; Green Hill
Art_GhzFlowerStalk:			binclude "Levels/GHZ/Animated Tiles/Uncompressed Art/GHZ Flower Stalk.bin"
	even
Art_GhzWater:				binclude "Levels/GHZ/Animated Tiles/Uncompressed Art/GHZ Waterfall.bin"
	even
Art_GhzFlower1:				binclude "Levels/GHZ/Animated Tiles/Uncompressed Art/GHZ Flower Large.bin"
	even
Art_GhzFlower2:				binclude "Levels/GHZ/Animated Tiles/Uncompressed Art/GHZ Flower Small.bin"
	even