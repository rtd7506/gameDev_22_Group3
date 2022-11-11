/// @description Insert description here
// You can write your code in this editor

mspd -= 0.1


if mspd > 0.1{
	hspd = lengthdir_x(mspd,move_dir)
	vspd = lengthdir_y(mspd,move_dir)
	MoveCollide()
}

if obj_manager.shop{
	instance_destroy()
}

if place_meeting(x,y,obj_player){
	audio_play_sound(snd_collect,10,false,1,0,1) 
	PLAYER_MONEY += 20+obj_manager.stage*5
	obj_stat_manager.p_moneyCollected += 20+obj_manager.stage*5
	if obj_player.tutorial_progress == 4 && !obj_player.hasCashed{
		obj_player.hasCashed = true
	}
	instance_destroy()
}