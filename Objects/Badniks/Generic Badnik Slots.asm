Obj_BadnikSlot1:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	Obj_BataPyon	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)

Obj_BadnikSlot2:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	Obj_Spikebonker	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)

Obj_BadnikSlot3:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	Obj_BallHog	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)

Obj_BadnikSlot4:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	DeleteObject	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)

Obj_BadnikSlot5:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	DeleteObject	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)

Obj_BadnikSlot6:
		moveq	#0,d0
		move.w	(Current_zone_and_act).w,d0
		ror.b	#2,d0
		lsr.w	#4,d0
		movea.l	.index(pc,d0.w),a1
		jmp		(a1)
.index:
	rept 4
		dc.l	DeleteObject	; ???
	endr
	rept 4
		dc.l	DeleteObject	; test levels
	endr
	zonewarning	.index,(4*4)
