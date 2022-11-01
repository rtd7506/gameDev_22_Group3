/// @description Insert description here
// You can write your code in this editor

event_inherited()

if MONEY >= 50{
	can_be_grabbed = true
}else{
	can_be_grabbed = false
}


if can_be_grabbed{
	image_blend = c_white
}else{
	image_blend = c_grey
}
