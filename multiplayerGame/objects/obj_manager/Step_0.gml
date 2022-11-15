/// @description Insert description here
// You can write your code in this editor

if instance_number(obj_gate) < 1 && !done{
	done = true
	//show_debug_message(string(stage))
	instance_create_layer(384,128,"Enemies",obj_exit)
}

if stage == 5 && instance_number(obj_enemy_boss) < 1 && !done{
	done = true
	//show_debug_message(string(stage))
	instance_create_layer(384,128,"Enemies",obj_exit)
}
/*
if stage == 5 && !shop{
	obj_menu.screen = 3
}
*/
if keyboard_check_pressed(ord("P")) && stage < 4{
	stage += 1
}
/*
if keyboard_check_pressed(ord("B")){
	obj_menu.screen = 3
}
*/

