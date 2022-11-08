/// @description Insert description here
// You can write your code in this editor

image_index = _id

if obj_manager.stage == 7 && !obj_manager.shop{
	active = false
}

if active{
	image_blend = c_white
}else{
	image_blend = c_grey
}