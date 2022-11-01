/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_slash) && !hit && can_hit{
	hit = true
	can_hit = false
	alarm[0] = 10
	_health -= 1
	if _health < 1{
		room_restart()
	}
}

if !place_meeting(x,y,obj_slash){
	can_hit = true
}

if hit{
	image_blend = c_red
}else{
	image_blend = c_white
}
