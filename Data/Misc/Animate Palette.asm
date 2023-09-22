; ---------------------------------------------------------------------------
; Palette cycling routine loading subroutine
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Animate_Palette:
		bsr.s	SuperHyper_PalCycle
		tst.w	(Palette_fade_timer).w
		bmi.w	AnimateTiles_NULL
		beq.s	AnPal_Load
		subq.w	#1,(Palette_fade_timer).w
		jmp	(Pal_FromBlack).w
; ---------------------------------------------------------------------------

AnPal_Load:
		movea.l	(Level_data_addr_RAM.AnPal).w,a0
		jmp	(a0)

SuperHyper_PalCycle:
		move.b	(Super_palette_status).w,d0	; 0 = off | 1 = fading | -1 = fading done
		beq.w	locret_37EC			; return, if player isn't super
		bmi.w	SuperHyper_PalCycle_Normal	; branch, if fade-in is done
		subq.b	#1,d0
		bne.w	SuperHyper_PalCycle_Revert	; branch for values greater than 1

		; fade from Sonic's to Super Sonic's palette
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#1,(Palette_timer).w

SuperHyper_PalCycle_FadeIn:
		; increment palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
		move.w	(Palette_frame).w,d0
		addq.w	#8,(Palette_frame).w			; 1 palette entry = 1 word, Sonic uses 4 shades of blue
		cmpi.w	#$30,(Palette_frame).w			; has palette cycle reached the 6th frame?
		blo.s	SuperHyper_PalCycle_SonicApply		; if not, branch
		move.b	#-1,(Super_palette_status).w	; mark fade-in as done
		move.b	#0,(Player_1+object_control).w		; restore Sonic's movement

SuperHyper_PalCycle_SonicApply:
		lea	(Normal_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.l	4(a0,d0.w),(a1) ; Write last two palette entries

locret_37EC:
		rts
; ---------------------------------------------------------------------------

SuperHyper_PalCycle_Revert:	; runs the fade in transition backwards

		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.s	locret_37EC
		move.b	#3,(Palette_timer).w

		; decrement palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
		move.w	(Palette_frame).w,d0
		subq.w	#8,(Palette_frame).w	; previous frame
		bcc.s	loc_381E		; branch, if it isn't the first frame
		move.w	#0,(Palette_frame).w
		move.b	#0,(Super_palette_status).w	; 0 = off

loc_381E:
		bra.s	SuperHyper_PalCycle_SonicApply
; ---------------------------------------------------------------------------

SuperHyper_PalCycle_Normal:
		tst.b	(Super_Sonic_Knux_flag).w	; If Hyper Sonic, branch
		bmi.s	SuperHyper_PalCycle_HyperSonic

SuperHyper_PalCycle_SuperSonic:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#7,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
		move.w	(Palette_frame).w,d0
		addq.w	#8,(Palette_frame).w	; next frame
		cmpi.w	#$78,(Palette_frame).w	; is it the last frame?
		bls.s	loc_3898		; if not, branch
		move.w	#$30,(Palette_frame).w	; reset frame counter (Super Sonic's normal palette cycle starts at $24. Everything before that is for the palette fade)

loc_3898:
		bra.w	SuperHyper_PalCycle_SonicApply
; ---------------------------------------------------------------------------

SuperHyper_PalCycle_HyperSonic:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#4,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(PalCycle_HyperSonic).l,a0
		move.w	(Palette_frame).w,d0
		addq.w	#8,(Palette_frame).w			; next frame
		cmpi.w	#$60,(Palette_frame).w			; is it the last frame?
		blo.s	SuperHyper_PalCycle_Apply	; if not, branch
		move.w	#0,(Palette_frame).w			; reset frame counter

SuperHyper_PalCycle_Apply:
		lea	(Normal_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.l	4(a0,d0.w),(a1)	; Write last two palette entries
		rts
; ---------------------------------------------------------------------------
PalCycle_SuperSonic:
		binclude	"Objects/Sonic/Palettes/Super Sonic.bin"
		even

PalCycle_HyperSonic:
		dc.w $EEC,$ECA,$EA8
		dc.w $EEE,$EEE,$EEE
		dc.w $CEC,$AEA,$2E0
		dc.w $EEE,$EEE,$EEE
		dc.w $AEC,$4EC,$0CC
		dc.w $EEE,$EEE,$EEE
		dc.w $CEE,$8EE,$4CE
		dc.w $EEE,$EEE,$EEE
		dc.w $EEE,$CCE,$AAE
		dc.w $EEE,$EEE,$EEE
		dc.w $EEE,$ECE,$CAC
		dc.w $EEE,$EEE,$EEE

; Re-add Tails and Knuckles's Super/Hyper cycles here if you decide to add them...

; by Naoto, for SHIMA, yoinked by Gem
PalRotLeft_4:
		move.w	(a0)+,d0
		move.w	(a0)+,d1
		move.l	(a0)+,d2
		move.w	d0,-(a0)
		move.l	d2,-(a0)
		move.w	d1,-(a0)
		rts

PalRotRight_4:
		move.w	(a0)+,d0
		move.l	(a0)+,d1
		move.w	(a0)+,d2
		move.l	d1,-(a0)
		move.w	d0,-(a0)
		move.w	d2,-(a0)
		rts

PalRotLeft_3:
		move.w	(a0)+,d0
		move.l	(a0)+,d1
		move.w	d0,-(a0)
		move.l	d1,-(a0)
		rts

PalRotRight_3:
		move.l	(a0)+,d0
		move.w	(a0)+,d1
		move.l	d0,-(a0)
		move.w	d1,-(a0)
		rts