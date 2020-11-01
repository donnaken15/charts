script()
{
	GetSongTimeMs();
	endtime = *end_time;
	starttime = %time;
	if (* current_song == bosstom)
		{ endtime = 197733; }
	elseif (* current_song == bossslash)
		{ endtime = 226504; }
	elseif (* current_song == bossdevil)
		{ endtime = 321466; }
	elseif (* current_song == bossjoe)
		{ endtime = 236950; }
	elseif (* current_song == bosszakk)
		{ endtime = 230783; }
	elseif (* current_song == bossted)
	    { endtime = 187389; }
	endif;
	// FIGURE OUT SWITCH OR ARRAY
	// or make more qb friendly
	// like store in qb file somewhere
	// like guitar_boss > props > death_time or something
	// or songlist > song > boss_time
}