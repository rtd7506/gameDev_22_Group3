/// @description Insert description here
// You can write your code in this editor

if instance_number(obj_gate) < 1 && !done{
	done = true
	show_debug_message(string(stage))
	instance_create_layer(384,128,"Enemies",obj_exit)
}


