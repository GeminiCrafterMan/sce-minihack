; ---------------------------------------------------------------------------
; Object 1E - Ball Hog enemy (SBZ)
; ---------------------------------------------------------------------------

Obj_BallHog:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Hog_Index(pc,d0.w),d1
		jmp	Hog_Index(pc,d1.w)
; ===========================================================================
Hog_Index:	dc.w Hog_Main-Hog_Index
		dc.w Hog_Action-Hog_Index

hog_launchflag = $32		; 0 to launch a cannonball
; ===========================================================================

Hog_Main:	; Routine 0
		move.b	#$13,y_radius(a0)
		move.b	#8,x_radius(a0)
		move.l	#Map_Hog,mappings(a0)
		move.w	#$480,art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#4*$80,priority(a0)
		move.b	#5,collision_flags(a0)
		move.b	#$C,width_pixels(a0)
		move.b	#$C,height_pixels(a0)
		jsr		ObjectFall
		jsr	(ObjFloorDist).l	; find floor
		tst.w	d1
		bpl.s	.floornotfound
		add.w	d1,y_pos(a0)
		move.w	#0,y_vel(a0)
		addq.b	#2,routine(a0)

.floornotfound:
		rts	
; ===========================================================================

Hog_Action:	; Routine 2
		lea		(Ani_Hog).l,a1
		jsr		AnimateSprite
		cmpi.b	#1,mapping_frame(a0)	; is final frame (01) displayed?
		bne.s	.setlaunchflag	; if not, branch
		tst.b	hog_launchflag(a0)	; is it	set to launch cannonball?
		beq.s	.makeball	; if yes, branch
		bra.s	.remember
; ===========================================================================

.setlaunchflag:
		clr.b	hog_launchflag(a0)	; set to launch	cannonball

.remember:
		jmp		Sprite_CheckDeleteTouch
; ===========================================================================

.makeball:
		move.b	#1,hog_launchflag(a0)
		jsr		FindFreeObj
		bne.s	.fail
		move.l	#Obj_BallHogCannonball,address(a1) ; load cannonball object ($20)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	#-$100,x_vel(a1) ; cannonball bounces to the left
		move.w	#0,y_vel(a1)
		moveq	#-4,d0
		btst	#0,status(a0)	; is Ball Hog facing right?
		beq.s	.noflip		; if not, branch
		neg.w	d0
		neg.w	x_vel(a1)	; cannonball bounces to	the right

.noflip:
		add.w	d0,x_pos(a1)
		addi.w	#$C,y_pos(a1)
		move.b	subtype(a0),subtype(a1) ; copy object type from Ball Hog

.fail:
		bra.s	.remember

; ---------------------------------------------------------------------------
; Object 20 - cannonball that Ball Hog throws (SBZ)
; ---------------------------------------------------------------------------

Obj_BallHogCannonball:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Cbal_Index(pc,d0.w),d1
		jmp	Cbal_Index(pc,d1.w)
; ===========================================================================
Cbal_Index:	dc.w Cbal_Main-Cbal_Index
		dc.w Cbal_Bounce-Cbal_Index

; ===========================================================================

Cbal_Main:	; Routine 0
		addq.b	#2,routine(a0)
		move.b	#7,y_radius(a0)
		move.l	#Map_Hog,mappings(a0)
		move.w	#$480,art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#3*$80,priority(a0)
		move.b	#$87,collision_flags(a0)
		move.b	#8,width_pixels(a0)
		moveq	#0,d0
		move.b	subtype(a0),d0 ; move subtype to d0
		mulu.w	#60,d0		; multiply by 60 frames	(1 second)
		move.w	d0,wait(a0) ; set explosion time
		move.b	#4,mapping_frame(a0)

Cbal_Bounce:	; Routine 2
		jsr	(ObjectFall).l
		tst.w	y_vel(a0)
		bmi.s	Cbal_ChkExplode
		jsr	(ObjFloorDist).l
		tst.w	d1		; has ball hit the floor?
		bpl.s	Cbal_ChkExplode	; if not, branch

		add.w	d1,y_pos(a0)
		move.w	#-$300,y_vel(a0) ; bounce
		tst.b	d3
		beq.s	Cbal_ChkExplode
		bmi.s	loc_8CA4
		tst.w	x_vel(a0)
		bpl.s	Cbal_ChkExplode
		neg.w	x_vel(a0)
		bra.s	Cbal_ChkExplode
; ===========================================================================

loc_8CA4:
		tst.w	x_vel(a0)
		bmi.s	Cbal_ChkExplode
		neg.w	x_vel(a0)

Cbal_ChkExplode:
		subq.w	#1,wait(a0) ; subtract 1 from explosion time
		bpl.s	Cbal_Animate	; if time is > 0, branch

Cbal_Explode:
		move.l	#Obj_Explosion,address(a0)	; change object	to an explosion
		move.b	#2,routine(a0) ; reset routine counter
		bra.w	Obj_Explosion	; jump to explosion code
; ===========================================================================

Cbal_Animate:
		subq.b	#1,anim_frame_timer(a0) ; subtract 1 from frame duration
		bpl.s	Cbal_Display
		move.b	#5,anim_frame_timer(a0) ; set frame duration to 5 frames
		bchg	#0,mapping_frame(a0)	; change frame

Cbal_Display:
		move.w	(Camera_max_Y_pos).w,d0
		addi.w	#$E0,d0
		cmp.w	y_pos(a0),d0	; has object fallen off	the level?
		jcs		DeleteObject	; if yes, branch
		jsr		Add_SpriteToCollisionResponseList
		jmp		DisplaySprite

; ---------------------------------------------------------------------------
; Ball Hog data
; ---------------------------------------------------------------------------

Map_Hog:	binclude	"Objects/Badniks/Ball Hog/Object Data/Map - Ball Hog.bin"
	even
Ani_Hog:	dc.w .hog-Ani_Hog
	.hog:	dc.b 9,	0, 0, 2, 2, 3, 2, 0, 0,	2, 2
			dc.b 3, 2, 0, 0, 2, 2, 3, 2, 0, 0, 1, afEnd
	even