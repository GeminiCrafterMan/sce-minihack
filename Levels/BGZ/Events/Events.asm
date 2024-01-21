; ---------------------------------------------------------------------------
; BGZ events
; ---------------------------------------------------------------------------

; =============== S U B R O U T I N E =======================================

BGZ1_ScreenInit:
		jsr	(Reset_TileOffsetPositionActual).w
		jmp	(Refresh_PlaneFull).w

; =============== S U B R O U T I N E =======================================

BGZ1_ScreenEvent:
		tst.b (Screen_event_flag).w
		bne.s	BGZ1_ScreenEvent_RefreshPlane
		move.w	(Screen_shaking_flag+2).w,d0
		add.w	d0,(Camera_Y_pos_copy).w
		jmp	(DrawTilesAsYouMove).w
; ---------------------------------------------------------------------------

BGZ1_ScreenEvent_RefreshPlane:
		clr.b	(Screen_event_flag).w
		jmp	(Refresh_PlaneScreenDirect).w

; =============== S U B R O U T I N E =======================================

BGZ1_BackgroundInit:
		bsr.s	BGZ1_Deform
		jsr	(Reset_TileOffsetPositionEff).w
		jsr	(Refresh_PlaneFull).w
		bra.s	BGZ1_BackgroundEvent.deform

; =============== S U B R O U T I N E =======================================

BGZ1_BackgroundEvent:
		tst.b (Background_event_flag).w
		bne.s	BGZ1_Transition
		bsr.s	BGZ1_Deform

.deform:
		lea	BGZ1_BGDeformArray(pc),a4
		lea	(H_scroll_table).w,a5
		jsr	(ApplyDeformation).w
		jmp	(ShakeScreen_Setup).w
; ---------------------------------------------------------------------------

BGZ1_Transition:
		st		(LastAct_end_flag).w
		tst.b	(LevResults_end_flag).w
		beq.s	.ret
		jmp		Transition_Generic
	.ret:
		bsr.w	BGZ1_Deform
		bra.w	BGZ1_BackgroundEvent.deform
; ---------------------------------------------------------------------------

BGZ1_BGDeformArray:
	rept 15
		dc.w 16
	endr
		dc.w $7FFF
; ---------------------------------------------------------------------------

BGZ1_Deform:

		; Yscroll
;		move.w	(Camera_Y_pos_copy).w,d0
;		asr.w	#6,d0
;		move.w	d0,(Camera_Y_pos_BG_copy).w

		; Xscroll
		lea	(H_scroll_table).w,a1
		move.l	(Camera_X_pos_copy).w,d0
		neg.l	d0
		move.w	(Level_frame_counter).w,d1
		swap	d1
		clr.w	d1								; set longword
		asr.l	#1,d1
		asr.l	#7,d0
		add.l	d1,d0
		swap	d0
		move.l	d0,d2							; save speed star 1
		swap	d0
		asr.l	#3,d0
		asr.l	#1,d1
		add.l	d1,d0
		swap	d0
		move.l	d0,d3							; save speed star 2

	rept 16/2
		move.w	d2,(a1)+							; set speed star 1
		move.w	d3,(a1)+							; set speed star 2
	endr

		rts
