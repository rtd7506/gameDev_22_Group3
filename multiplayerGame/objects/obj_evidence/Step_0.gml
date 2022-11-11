/// @description Insert description here
// You can write your code in this editor
event_inherited()

if grabbed{
	//audio_play_sound(snd_paper_pickup, 2, 0)
	x_offset = mouse_x-x_pos
	y = mouse_y
	depth = -100
	if mouse_check_button_released(mb_left){
		grabbed = false
		if place_meeting(x,y,obj_shredder){
			shredding = true
			obj_shredder.count+= 1
			MONEY += 25
			depth = 0
			y = 384
			can_be_grabbed = false
			audio_play_sound(snd_paper_shred, 1, 0)
		}else{
			x_offset = 0
			y = y_pos
			audio_stop_sound(snd_paper_pickup)
		}
		//can_be_grabbed = false
		//depth = 300
		//instance_destroy()
	}
}

if shredding{
	x_offset = 1024-x_pos
	y += 1
	if y > 468{
		instance_destroy()
	}
}