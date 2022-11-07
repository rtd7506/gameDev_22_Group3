/// @description Insert description here
// You can write your code in this editor

event_inherited()

if place_meeting(x,y,obj_ink){
	if mouse_check_button_released(mb_left){
		leaving = true
		active = false
	}
}

if leaving{
	x_offset += 10
}
if entering{
	scale+=0.05
	if scale >= 1{
		entering = false
		active = true
	}
}

if x > room_width && obj_menu.game_screen == sub_id && obj_menu.screen == 1{
	obj_menu.new_doc = true
	instance_destroy()
}

image_xscale = 1
image_yscale = scale