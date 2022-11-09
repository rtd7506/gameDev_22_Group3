/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_gate) || place_meeting(x,y,obj_no_move) || (place_meeting(x,y,obj_enemy_base) && !place_meeting(x,y,obj_turret)) || place_meeting(x,y,obj_slash) || place_meeting(x,y,obj_swing){
	instance_destroy()
}

if place_meeting(x,y,obj_player){
	if obj_manager.boss = true{
		obj_player._health -= 1
	}else{
		obj_player._health -= 2
	}
	instance_destroy()
}

