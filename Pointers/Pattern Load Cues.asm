; ===========================================================================
; Level pattern load cues
; ===========================================================================

Offs_PLC: offsetTable

	rept 4
		offsetTableEntry.w PLC1_DEZ1_Misc
		offsetTableEntry.w PLC2_DEZ1_Enemy
	endr

		offsetTableEntry.w PLC1_GHZ_Misc
		offsetTableEntry.w PLC2_GHZ_Enemy
		offsetTableEntry.w PLC1_EHZ_Misc
		offsetTableEntry.w PLC2_EHZ_Enemy
		offsetTableEntry.w PLC1_DEZ1_Misc
		offsetTableEntry.w PLC2_DEZ1_Enemy
		offsetTableEntry.w PLC1_DEZ1_Misc
		offsetTableEntry.w PLC2_DEZ1_Enemy

		zonewarning Offs_PLC,(4*4)

; ===========================================================================
; Pattern load cues - Main 1
; ===========================================================================

PLC_Main: plrlistheader
		plreq ArtTile_EnemyScore, ArtKosM_EnemyPts		; Enemy points
		plreq ArtTile_StarPost, ArtKosM_StarPost		; StarPost
		plreq ArtTile_Ring_Sparks, ArtKosM_Ring_Sparks	; Rings
		plreq ArtTile_HUD, ArtKosM_Hud					; HUD
PLC_Main_end

; ===========================================================================
; Pattern load cues - Main 2
; ===========================================================================

PLC_Main2: plrlistheader
		plreq $47E, ArtKosM_GrayButton					; Button
		plreq ArtTile_SpikesSprings, ArtKosM_SpikesSprings	; Spikes and normal spring
		plreq ArtTile_Monitors, ArtKosM_Monitors			; Monitors
		plreq $5A0, ArtKosM_Explosion						; Explosion
PLC_Main2_end

; ===========================================================================
; Pattern load cues - Death Egg (Misc)
; ===========================================================================

PLC1_DEZ1_Misc: plrlistheader
PLC1_DEZ1_Misc_end

; ===========================================================================
; Pattern load cues - Death Egg (Enemy)
; ===========================================================================

PLC2_DEZ1_Enemy: plrlistheader
		plreq $400, ArtKosM_BataPyon					; Bata-pyon badnik
		plreq $480,	ArtKosM_BallHog						; Ball Hog badnik
		plreq $500, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_DEZ1_Enemy_end

; ===========================================================================
; Pattern load cues - Green Hill (Misc)
; ===========================================================================

PLC1_GHZ_Misc: plrlistheader
PLC1_GHZ_Misc_end

; ===========================================================================
; Pattern load cues - Green Hill (Enemy)
; ===========================================================================

PLC2_GHZ_Enemy: plrlistheader
		plreq $500, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_GHZ_Enemy_end

; ===========================================================================
; Pattern load cues - Emerald Hill (Misc)
; ===========================================================================

PLC1_EHZ_Misc: plrlistheader
PLC1_EHZ_Misc_end

; ===========================================================================
; Pattern load cues - Emerald Hill (Enemy)
; ===========================================================================

PLC2_EHZ_Enemy: plrlistheader
		plreq $500, ArtKosM_Spikebonker					; Spikebonker badnik
PLC2_EHZ_Enemy_end