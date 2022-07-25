if room != rmMainMenu and keyboard_check_pressed(vk_escape)
{
	instance_deactivate_all(true)
	room_goto(rmMainMenu)
	

}

if keyboard_check_pressed(vk_f11)
	window_set_fullscreen(!window_get_fullscreen())