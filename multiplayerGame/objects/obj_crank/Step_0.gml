/// @description Insert description here
// You can write your code in this editor
event_inherited()
if cranking{
	var target_angle = point_direction(x,y,mouse_x,mouse_y)
	if last_tick >= 360{
		last_tick -= 360
	}
	if target_angle > last_tick{
		last_tick = last_tick+tick_angle
		progress+=1
		if progress > 200{
			stop = true
			cranking = false
			alarm[0] = 60
		}
		show_debug_message(progress)
		
	}

	
	

	//show_debug_message(string(target_angle))//abs(sin(degtorad(image_angle)))
	image_angle = point_direction(x,y,mouse_x,mouse_y)-180//lerp(target_angle,image_angle,0.1)
	if mouse_check_button_released(mb_left){
		cranking = false
	}
	last_tick = point_direction(x,y,mouse_x,mouse_y)
}
