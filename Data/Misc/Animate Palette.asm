; ---------------------------------------------------------------------------
; Palette cycling routine loading subroutine
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

Animate_Palette:
		tst.w	(Palette_fade_timer).w
		bmi.s	AnimateTiles_NULL
		beq.s	AnPal_Load
		subq.w	#1,(Palette_fade_timer).w
		jmp	(Pal_FromBlack).w
; ---------------------------------------------------------------------------

AnPal_Load:
		movea.l	(Level_data_addr_RAM.AnPal).w,a0
		jmp	(a0)

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