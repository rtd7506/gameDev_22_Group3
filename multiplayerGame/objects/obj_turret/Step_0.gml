/// @description Insert description here
// You can write your code in this editor

event_inherited()
if wrangled {
	var _dir = point_direction(x,y,mouse_x, mouse_y) 
	image_angle = _dir
	if can_fire { 
		can_fire = false 
		alarm[2] = fire_rate 
	
		var _dir = image_angle 
	
		var _inst = instance_create_layer(x,y,"Instances",obj_projectile)
		with _inst { 
			speed = obj_turret.proj_speed 
			direction = _dir
		} 
	}
	
	if mouse_check_button_released(mb_left){
		wrangled = false
	}

}