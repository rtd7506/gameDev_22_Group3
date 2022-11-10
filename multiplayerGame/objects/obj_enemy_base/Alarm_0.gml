/// @description Stop hit
// You can write your code in this editor

hit = false
if _health < 1{
	//PLAYER_MONEY += value
	obj_stat_manager.p_enemiesKilled += 1
	instance_destroy()
}

