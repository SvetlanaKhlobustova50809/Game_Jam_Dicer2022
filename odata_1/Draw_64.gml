/// Menu
if state = "menu"
{
	// Setting
	draw_sprite_stretched(sSettings, 0,xset- mwidth / 2 +950, yset- mheight / 2+300,  mwidth-300, mheight+50)
	scrOutlinedBox(xset+810-10, yset+325, mwidth-280-20, mheight+50)
	scrOutlinedText(xset, yset, c_white, c_black, "", depth, fontArialRusSmall, fa_center, fa_middle)

	// Exit

	draw_sprite_stretched(sKnopka, 0, xex - mwidth / 2-600, yex - mheight / 2+100, mwidth-20, mheight)
	scrOutlinedBox(xex-600-10, yex+100, mwidth-20, mheight)
	scrOutlinedText(xex-600, yex+100, c_white, c_black, "Выход", depth, fontArialRusSmall, fa_center, fa_middle)

	// Start
	draw_sprite_stretched(sKnopka, 0, xst - mwidth / 2-600, yst - mheight / 2+170, mwidth-20, mheight)
	scrOutlinedBox(xst-600-10, yst+170, mwidth-20, mheight)
	scrOutlinedText(xst-600, yst+170, c_white, c_black, "Начать игру", depth, fontArialRusSmall, fa_center, fa_middle)
}
/// Settings
else if state = "settings"
{
	// Back
	draw_sprite_stretched(sKnopka, 0, xback - swidth / 2, yback - sheight / 2, swidth, sheight)
	scrOutlinedBox(xback, yback, swidth, sheight)
	scrOutlinedText(xback, yback, c_white, c_black, "Назад", depth, fontArialRusSmall, fa_center, fa_middle)
	
	// Size
	draw_sprite_stretched(sKnopka, 0, xsize - swidth / 2, ysize - sheight / 2, swidth, sheight)
	scrOutlinedBox(xsize, ysize, swidth, sheight)
	scrOutlinedText(xsize, ysize, c_white, c_black, "Разрешение экрана: " + string(global.CameraSizes[global.CameraNum][0] * CameraScale) + "x" + string(global.CameraSizes[global.CameraNum][1] * CameraScale), depth, fontArialRusSmall, fa_center, fa_middle)
	
	// Full Screen
	draw_sprite_stretched(sKnopka, 0, xfs - swidth / 2, yfs - sheight / 2, swidth, sheight)
	scrOutlinedBox(xfs, yfs, swidth, sheight)
	var fullscreen = window_get_fullscreen()
	if fullscreen == 0
		fullscreen = "Выкл."	
	else   
	
		fullscreen = "Вкл."
	scrOutlinedText(xfs, yfs, c_white, c_black, "Полноэкранный режим: " + fullscreen, depth, fontArialRusSmall, fa_center, fa_middle)
}