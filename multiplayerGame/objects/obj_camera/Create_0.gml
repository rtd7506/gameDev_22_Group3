/// @description Insert description here
// You can write your code in this editor

//window_set_size(640,480)
target = obj_player
cam = view_get_camera(view_current)

cam_width = camera_get_view_width(cam)
cam_height= camera_get_view_height(cam)

lerp_spd = 0.2

x = target.x
y = target.y

cam_x = x
cam_y = y

