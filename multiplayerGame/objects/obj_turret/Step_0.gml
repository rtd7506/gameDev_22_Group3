/// @description Insert description here
// You can write your code in this editor

event_inherited()
if wrangled {
	var _dir = point_direction(x,y,mouse_x, mouse_y) 
	image_angle = _dir
	
	
	if mouse_check_button_released(mb_left){
		wrangled = false
	}

}

if can_fire { 
	can_fire = false 
	alarm[2] = fire_cooldown
	
	var _dir = image_angle 
	var _inst = instance_create_layer(x,y,"Instances",obj_projectile)
	with _inst { 
		speed = obj_turret.proj_speed 
		direction = _dir
		image_angle = _dir
	} 
	fire_count+=1
	alarm[3] = fire_rate
}