/// @description Insert description here
// You can write your code in this editor
if obj_manager.stage == 5{//.boss
	_health = health_max
}
event_inherited()

if obj_player.y < y{
	depth = -10000
}else{
	depth = 0
}

