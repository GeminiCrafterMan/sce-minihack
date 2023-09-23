; ===========================================================================
; Level Music Playlist
; ===========================================================================

LevelMusic_Playlist:
		dc.b mus_IStD, mus_DItC, mus_Unti, mus_Unti	; DEZ 1,2,3,4
		dc.b mus_GHZ, mus_EHZ, mus_Unti, mus_Unti	; GHZ, EHZ, SLZ

		zonewarning LevelMusic_Playlist,(1*4)