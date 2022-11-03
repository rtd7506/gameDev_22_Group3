/// @description Insert description here
// You can write your code in this editor



if can_fire {
	can_fire = false
	alarm[0] = fire_rate
	
	var _dir = image_angle
	
	var _inst = instance_create_layer(x,y,"Instances",obj_projectile)
	with _inst {
		speed = obj_turret.proj_speed
		direction = _dir +90
		
	}
	
}