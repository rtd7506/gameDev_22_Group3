/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_gate) || place_meeting(x,y,obj_no_move) || (place_meeting(x,y,obj_enemy_base) && !place_meeting(x,y,obj_turret)) || place_meeting(x,y,obj_slash) || place_meeting(x,y,obj_swing){
	instance_destroy()
}

if place_meeting(x,y,obj_player){
	obj_player.hurt = true;
	audio_play_sound(snd_damage, 1, 0)
	obj_player.can_be_hurt = false
	obj_player.hurt_dir = point_direction(obj_player.x,obj_player.y,x,y)
	obj_player.alarm[1] = 10
	obj_player.alarm[2] = 30
	if obj_manager.boss = true{
		obj_player._health -= 1
	}else{
		obj_player._health -= 2
	}
	instance_destroy()
}

