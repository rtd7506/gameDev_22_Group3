/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_slash) && !hit && can_be_hit{ //Detect hit
	hit = true
	hit_dir = point_direction(x,y,obj_player.x,obj_player.y)
	can_be_hit = false
	alarm[0] = 5
	_health -= 1
}

if hit{
	image_blend = c_red
	move_dir = hit_dir
	mspd = -10 //Hit knockback
}else{
	image_blend = c_white
	if mspd < 1{
		mspd+=1
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}

if keyboard_check_pressed(vk_space){ //Make it so it can't be hit by the same slash multiple times
	can_be_hit = true
}

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()