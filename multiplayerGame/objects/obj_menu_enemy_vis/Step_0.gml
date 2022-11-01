/// @description Insert description here
// You can write your code in this editor

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

if obj_menu.screen == _id{
	x = 864
}else{
	x = 864+offset*(_id+1)
}
