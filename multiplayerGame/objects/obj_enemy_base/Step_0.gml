/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_slash) && !hit && can_be_hit{ //Detect hit
	hit = true
	hit_dir = point_direction(x,y,obj_player.x,obj_player.y)
	can_be_hit = false
	alarm[0] = 5
	alarm[1] = 40
	_health -= 2
}

if place_meeting(x,y,obj_swing) && !hit && can_be_hit{ //Detect hit
	hit = true
	hit_dir = point_direction(x,y,obj_player.x,obj_player.y)
	can_be_hit = false
	alarm[0] = 5
	alarm[1] = 60
	_health -= 3
}

if place_meeting(x,y,obj_projectile_player){
	hit = true
	var proj = instance_nearest(x,y,obj_projectile_player)
	hit_dir = point_direction(x,y,proj.x,proj.y)
	instance_destroy(proj)
	alarm[0] = 5
	_health -= 1
}


if hit{
	image_blend = c_red
}else{
	image_blend = c_white
}
/*
if keyboard_check_pressed(vk_space){ //Make it so it can't be hit by the same slash multiple times
	can_be_hit = true
}
*/
MoveCollide()