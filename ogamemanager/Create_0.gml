// Всё, что ниже - было создано недавно

global.CameraSizes = [[640, 360], [960, 540]]
global.CameraNum = array_length(global.CameraSizes) - 1
global.CameraWidth = global.CameraSizes[global.CameraNum][0]
global.CameraHeight = global.CameraSizes[global.CameraNum][1]
#macro CameraScale 2
#macro CameraSpeed 0.1

window_set_fullscreen(true)
var windowWidth = global.CameraWidth * CameraScale
var windowHeight = global.CameraHeight * CameraScale

surface_resize(application_surface,global.CameraWidth * CameraScale,global.CameraHeight * CameraScale);
window_set_size(global.CameraWidth * CameraScale,global.CameraHeight * CameraScale);
window_set_position(display_get_width() / 2 - windowWidth / 2, display_get_height() / 2 - windowHeight / 2);

instance_create_depth(x, y, 0, oData_1) 

globalvar field;