/// @description Insert description here
// You can write your code in this editor

image_index = _id
/*
if obj_manager.stage == 5 && !obj_manager.shop && _id == 1{
	active = false
}
*/
if active{
	image_blend = c_white
}else{
	image_blend = c_grey
}

if _id == 0 && obj_menu.screen != 0{
	if MONEY > 750{
		image_blend = c_yellow
	}
}

if _id == 1 && obj_menu.screen != 1{
	if MONEY < 75{
		image_blend = c_yellow
	}
}

if _id == 2 && obj_menu.screen != 2{
	if obj_manager.stage > 3 && !obj_menu.hasBossed{
		image_blend = c_yellow
	}
}