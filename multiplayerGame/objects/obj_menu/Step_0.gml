/// @description Insert description here
// You can write your code in this editor




if screen == 0{
	image_index = screen
}else if screen == 1{
	image_index = game_screen+2
}

if no_customer == true{
	no_customer = false
	alarm[0] = irandom_range(60,180)
}

if option_next{
	alarm[1] = 60
	option_next = false
}

if keyboard_check_pressed(ord("T")){
	game_screen += 1
}

if new_doc{
	instance_create_depth(864,288,0,obj_document)
	new_doc = false
}