/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_enemy){
	instance_destroy()
}else{
	x = instance_nearest(x,y,obj_enemy).x
	y = instance_nearest(x,y,obj_enemy).y
}



image_index = dir


