/// @description Insert description here
// You can write your code in this editor

event_inherited()

if obj_manager.boss{
	cost = floor((cost_base+instance_number(enemy)*25)/2)
}else{
	cost = cost_base + (instance_number(enemy)*25)
}

if MONEY >= cost{
	can_be_grabbed = true
}else{
	can_be_grabbed = false
}


if can_be_grabbed{
	image_blend = c_white
}else{
	image_blend = c_grey
}
