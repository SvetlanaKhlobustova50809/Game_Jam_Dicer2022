function scrOutlinedBox(xx=x, yy=y, width=1, height=1)
{
	if point_in_rectangle(dmxg, dmyg, xx - width / 2, yy - height / 2, xx + width / 2, yy + height / 2)
	{
		draw_set_color(c_white)
		draw_set_alpha(0.15)
		draw_rectangle(xx - width / 2, yy - height / 2, xx + width / 2, yy + height / 2, false)
		draw_set_alpha(1)
	}
}

function scrOutlinedText(xPos, yPos, col, outlinedCol, text, curdepth, font, halign, valign)
{
	depth = -1000
	draw_set_font(font)
	draw_set_halign(halign)
	draw_set_valign(valign)
	draw_set_color(outlinedCol)
	draw_text(xPos+1,yPos,text)
	draw_text(xPos-1,yPos,text)
	draw_text(xPos,yPos+1,text)
	draw_text(xPos,yPos-1,text)
	draw_set_color(col)
	draw_text(xPos,yPos,text)
	depth = curdepth
}


function ChangeScreenSize()
{
	var wwidth = global.CameraWidth * CameraScale
	var wheight = global.CameraHeight * CameraScale

	swidth = wwidth * 0.4
	sheight = wheight * 0.1
	surface_changed = false

	xfs = wwidth / 2 
	yfs =  wheight / 2
	xsize = wwidth / 2
	ysize = wheight / 2 + (wheight * 0.1)
	xback = wwidth / 2
	yback = wheight / 2 + (wheight * 0.1) * 2	
}
