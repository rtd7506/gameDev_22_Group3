/// @description Insert description here
// You can write your code in this editor

event_inherited()

if place_meeting(x,y,obj_ink){
	if mouse_check_button_released(mb_left){
		audio_play_sound(snd_paper_sign, 1, 0)
		leaving = true
		active = false
		AddMoney(x,y,20)
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
	obj_menu.doc_count += 1
	instance_destroy()
}

image_xscale = 1
image_yscale = scale