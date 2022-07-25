// Общее
dmxg = device_mouse_x_to_gui(0)
dmyg = device_mouse_y_to_gui(0)
state = "menu"
// MMenu

var wwidth = global.CameraWidth * CameraScale
var wheight = global.CameraHeight * CameraScale
var bwidth = wwidth * 0.25
var bheight = wheight * 0.1


xset = wwidth / 2
yset =  wheight * 0.5 + bheight
xst = wwidth / 2
yst =  wheight * 0.5
xex = wwidth / 2
yex =  wheight * 0.5 + bheight * 2


mwidth = bwidth;
mheight = bheight;


old_size = global.CameraWidth * CameraScale
new_size = global.CameraWidth * CameraScale

// SSeting

swidth = wwidth * 0.4
sheight = wheight * 0.1
surface_changed = false

xfs = wwidth / 2 
yfs =  wheight / 2
xsize = wwidth / 2
ysize = wheight / 2 + (wheight * 0.1)
xback = wwidth / 2
yback = wheight / 2 + (wheight * 0.1) * 2

