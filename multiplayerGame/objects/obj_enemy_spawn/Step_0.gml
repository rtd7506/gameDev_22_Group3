/// @description Insert description here
// You can write your code in this editor



if place_meeting(x,y,obj_slash) && !hit && can_be_hit{ //Detect hit
	hit = true
	hit_dir = point_direction(x,y,obj_player.x,obj_player.y)
	can_be_hit = false
	alarm[0] = 5
	_health -= 1
}

if !just_spawned{
	instance_create_layer(x,y,"Instances",obj_enemy)
	just_spawned = true
	alarm[1] = room_speed*5
}