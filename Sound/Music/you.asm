you2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     you2_Voices
	smpsHeaderChan      $02, $00
	smpsHeaderTempo     $02, $02

	smpsHeaderDAC       you2_DAC
	smpsHeaderFM        you2_FM1,	$00, $13

; FM1 Data
you2_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterVol        $0E
	dc.b	nBb2, $0C, nF5, $03, nEb5, nCs5, $06, nFs2, nAb4, nRst, $03, nEb5
	dc.b	nCs5, nCs5, nAb2, $0C, nF5, $03, nEb5, nCs5, nCs5, nCs3, $06, nAb5
	dc.b	nRst, $0C, nBb2, nF5, $03, nEb5, nCs5, $06, nFs2, nAb4, nRst, $03
	dc.b	nEb5, nCs5, $05, nRst, $01, nAb2, $09, nEb5, $03, nF5, nEb5, nCs5
	dc.b	$05, nRst, $01, nCs3, $0C, nRst, nBb2, $06, nF3, nAb3, $0C, nFs2
	dc.b	$06, nCs3, nF3, $0C, nAb2, $06, nEb3, nFs3, $0C, nCs3, $06, nAb3
	dc.b	nC4, $0C, nBb2, $06, nF3, nAb3, $0C, nFs2, $06, nCs3, nF3, $0C
	dc.b	nAb2, $06, nEb3, nFs3, $0C, nCs3, $05, nRst, $01, nAb3, $06, nC4
	dc.b	$0C, nBb2, $06, nF3, nAb3, $03, nEb5, nCs5, nCs5, nFs2, $06, nCs3
	dc.b	nF3, $03, nEb5, nCs5, $06, nAb2, nEb3, nFs3, $03, nEb5, nCs5, nCs5
	dc.b	nCs3, $06, nAb3, nC4, $0C, nBb2, $06, nF3, nAb3, $03, nEb5, nCs5
	dc.b	nCs5, nFs2, $05, nRst, $01, nCs3, $06, nF3, $03, nEb5, nCs5, nCs5
	dc.b	nAb2, $06, nEb3, nFs3, $03, nEb5, $09, nCs3, $06, nAb3, nC4, $0C
	smpsAlterVol        $FA
	dc.b	nBb2, $06, nF3, nAb3, $03, nEb5, nCs5, nCs5, nFs2, $06, nCs3, nF3
	dc.b	$03, nEb5, nCs5, nCs5, nAb2, $06, nEb3, nFs3, $03, nEb5, nCs5, nCs5
	dc.b	nCs3, $06, nAb3, nC4, $0C, nBb2, $06, nF3, nAb3, $03, nEb5, nF3
	dc.b	$06, nFs2, nCs3, nF3, $03, nEb5, nCs3, nCs5, nAb2, $06, nEb3, $03
	dc.b	nEb5, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02, nFs3, $03, nEb5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03, nCs5, nCs3, $05
	smpsAlterVol        $01
	dc.b	nRst, $01, nAb3, $06, nC4, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	nAb4, $03
	smpsAlterVol        $01
	dc.b	$03, nBb2, $06, nF3, nAb3, nAb4, nFs2, nCs3, nF3, nEb5, nAb2, nEb3
	dc.b	nFs3, nF5, nCs3, nAb3, nC4, nAb4, nBb2, nF3, nAb3, nAb4, nFs2, nCs3
	dc.b	nF3, nEb5, nAb2, nEb3, nFs3, nAb5, nCs3, nAb3, nC4, $0C, nBb2, $06
	dc.b	nF3, nAb3, nAb4, nFs2, nCs3, nF3, nEb5, nAb2, nEb3, nFs3, nF5, nCs3
	dc.b	nAb3, nC4, $0C, nBb2, $06, nF3, nAb3, nAb4, nFs2, nCs3, nF3, nEb5
	dc.b	nAb2, $05, nRst, $01, nEb3, $06, nFs3, nAb5, nCs3, nAb3, nC4
	smpsAlterVol        $03
	dc.b	nAb5, nBb3, nF4, nAb4, nAb5, nFs3, nCs4, nF4, nCs5, nAb3, nEb4, nFs4
	dc.b	nF5, nCs4, nAb4, nC5, nAb5, nBb3, nF4, nAb4, nAb5, nFs3, nCs4, nF4
	dc.b	nEb5, nAb3, nEb4, nFs4, $0C, nCs4, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02, nCs3, $01

you2_Loop00:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, you2_Loop00
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $F9
	dc.b	nBb2, $06
	smpsAlterVol        $07
	dc.b	nF3, nAb3, $03, nEb5, nAb3, $06, nFs2, nCs3, nF3, $03, nEb5, nF3
	dc.b	nCs5
	smpsAlterVol        $F9
	dc.b	nAb2, $06
	smpsAlterVol        $07
	dc.b	nEb3, $03, nEb5, nFs3, nEb5, nFs3, nCs5, nCs3, $06, nAb3, nC4, nC4
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	nF3, nAb3, $03, nEb5, nAb3, $06, nFs2, nCs3, nF3, $03, nEb5, nF3
	dc.b	$06
	smpsAlterVol        $F9
	dc.b	nAb2
	smpsAlterVol        $07
	dc.b	nEb3, $03, nEb5, nFs3, nEb5, nFs3, $06, nCs3, nAb3, nC4, nC4
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	nF3, nAb3, $03, nEb5, nAb3, $06, nFs2, nCs3, nF3, $03, nEb5, nF3
	dc.b	$06
	smpsAlterVol        $F9
	dc.b	nAb2
	smpsAlterVol        $07
	dc.b	nEb3, nFs3, $03, nEb5, nFs3, nCs5, nCs3, $06, nAb3, nC4, nC4
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	nF3, nAb3, $03, nEb5, nAb3, $06, nFs2, nCs3, nF3, $03, nEb5, nF3
	dc.b	$06
	smpsAlterVol        $F9
	dc.b	nAb2
	smpsAlterVol        $07
	dc.b	nEb3, $03, nEb5, nFs3, nEb5, nFs3, nCs5, nCs3, $06, nAb3, nC4
	smpsAlterVol        $07
	dc.b	nAb5, nBb2, nF3, nAb3, $0C, nFs2, $06, nCs3, nF3, nBb5, nAb2, $03
	dc.b	nFs5, nEb3, nCs5, nFs3, $06, nFs5, nCs3, nAb3, nC4, nC6, nBb2, nF3
	dc.b	nAb3, nCs6, nFs2, nCs3, nF3, nCs6, nAb2, $03, nCs6, nEb3, $06, nFs3
	dc.b	$0C, nCs3, $03, nFs6, nAb3, $06, nC4, nF6, nBb2, nF3, nAb3, nEb6
	dc.b	nFs2, nCs3, nF3, nCs6, nAb2, $03, nCs6, nEb3, $06, nFs3, nFs6, nCs3
	dc.b	nAb3, nC4, nEb6, nBb2, nF3, nAb3, nF6, nFs2, nCs3, nF3, nEb6, nAb2
	dc.b	nEb3, nFs3, nEb6, nCs3, nAb3, nC4
	smpsAlterVol        $04
	dc.b	nAb4, $03, $03, nBb2, $06, nF3, nAb3, $0C, nFs2, $06, nCs3, nF3
	dc.b	nEb5, nAb2, nEb3, nFs3, nF5, nCs3, nAb3, nC4, nAb4, nBb2, nF3, nAb3
	dc.b	$0C, nFs2, $06, nCs3, nF3, nEb5, nAb2, nEb3, nFs3, nAb5, nCs3, nAb3
	dc.b	nC4, $0C, nBb2, $06, nF3, nAb3, nAb4, nFs2, nCs3, nF3, nEb5, nAb2
	dc.b	nEb3, nFs3, nFs5, nCs3, nAb3, nC4, nAb5, nEb2, nF5, $0B, nRst, $01
	dc.b	nAb5, $05, nRst, $01, nF2, $06, nCs5, $0B, nRst, $01, nEb5, $05
	dc.b	nRst, $01, nFs2, $06, nCs5, $0B, nRst, $01, nEb5, $05, nRst, $01
	dc.b	nAb2, $0B, nRst, $01, nC3, $0B, nRst, $01
	smpsAlterVol        $EE
	dc.b	nBb2, $06
	smpsAlterVol        $07
	dc.b	$06, nAb3, $03, nEb5, nBb2, $06, nFs2, nFs2, nF3, $03, nEb5, nFs2
	dc.b	nCs5, nAb2, $06, $06, nFs3, $03, nEb5, nAb2, nCs5, nCs3, $06, $06
	dc.b	nC4, nCs3, nBb2, nBb2, nAb3, $03, nEb5, nBb2, $05, nRst, $01, nFs2
	dc.b	$06, $06, nF3, $03, nEb5, nFs2, $06, nAb1, nAb2, $03, nEb5, nEb3
	dc.b	nEb5, nAb2, $06, nCs2, nCs3, nAb3, nCs3
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	$06, nAb3, $03, nEb5, nBb2, $06, nFs2, nFs2, nF3, $03, nEb5, nFs2
	dc.b	$06, nAb1, nAb2, nEb3, $03, nEb5, nAb2, nCs5, nCs2, $06, nCs3, nAb3
	dc.b	nCs3, nBb2, nBb2, nAb3, $03, nEb5, nBb2, $06, nFs2, nFs2, nF3, $03
	dc.b	nEb5, nFs2, nCs5, nAb1, $06, nAb2, $03, nEb5, nEb3, nEb5, nEb3, nCs5
	dc.b	nCs2, $06, nCs3, nAb3, nCs3
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	$06, nAb3, nBb2, nFs2, $03, nF4, nFs2, nEb4, nF3, $06, nFs2, nAb2
	dc.b	nAb2, nFs3, nAb2, nCs3, nCs3, nC4, nCs3, nBb2, nBb2, nAb3, nBb2, nFs2
	dc.b	$03, nF4, nFs2, nEb4, nF3, $06, nFs2, nAb2, nAb2, nFs3, nAb2, nCs3
	dc.b	nCs3, nC4, nCs3
	smpsAlterVol        $F9
	dc.b	nBb2
	smpsAlterVol        $07
	dc.b	$06, nAb3, nBb2, nFs2, $03, nF4, nFs2, nEb4, nF3, $06, nFs2, nAb2
	dc.b	nAb2, nFs3, nAb2, nCs3, nCs3, nC4, nCs3, nBb2, nBb2, nAb3, nBb2, nFs2
	dc.b	$03, nF4, nFs2, nEb4, nF3, $06, nFs2, nAb2, nAb2, nFs3, nAb2, nCs2
	dc.b	$01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	nAb3, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02, nC4, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $02, nBb2, $06, nF3, nAb3, $0C, nFs2, $06, nCs3, nF3, $0C
	dc.b	nAb2, $06, nEb3, nFs3, $0C, nCs3, $06, nAb3, nC4, $0C, nBb2, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01, nF3, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03, nAb3, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02, nFs2, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	nCs3, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03, nF3, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02, nAb2, $06, nEb3, nFs3, $0C, nCs3, $06, nAb3, nC4, $30
	dc.b	nRst, $07
	smpsStop

; DAC Data
you2_DAC:
	smpsStop

you2_Voices:
;	Voice $00
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

