/// @description Insert description here
// You can write your code in this editor

hit = false
if _health < 1{
	PLAYER_MONEY += value
	if obj_player.tutorial_progress == 3 && !obj_player.hasGated{
		obj_player.hasGated = true
	}
	instance_destroy()
}


