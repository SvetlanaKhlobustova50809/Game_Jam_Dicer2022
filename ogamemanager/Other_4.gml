if room != rmMainMenu
{
	instance_activate_all()	
	field = array_create(room_width div 64)
	for (i = 0; i < room_width div 64; i++)
		field[i] = array_create(room_height div 64, 0)
	audio_play_sound(Mus1, 1, 1)
}
else
	audio_play_sound(MenuMus, 1, 1)