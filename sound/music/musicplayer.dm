// This checks a var on each area and plays that var
/area/Entered(mob/A as mob)
	if (A && src.music != "" && A.client && A.be_music != 0 && (A.music_lastplayed != src.music))
		A.music_lastplayed = src.music
		A << sound(src.music, repeat = 0, wait = 0, volume = 30, channel = 1)
