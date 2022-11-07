/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -1.25 //Hit knockback
}else{
	if mspd < 0.25{
		mspd+=0.25
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()

if can_fire { 
	can_fire = false 
	alarm[2] = fire_rate 
	
	var _dir = point_direction(x,y,obj_player.x,obj_player.y)
	var _spd = proj_speed
	
	var _inst = instance_create_layer(x,y,"Instances",obj_projectile_brute)
	with _inst { 
		speed = _spd
		direction = _dir
		image_angle = _dir
	} 
}