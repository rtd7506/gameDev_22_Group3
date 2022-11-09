/// @description Insert description here
// You can write your code in this editor

image_speed = 0
image_xscale = 3
image_yscale = 3
if !instance_exists(obj_enemy){
	instance_destroy()
}

dir = instance_nearest(x,y,obj_enemy).dir

alarm[0] = 6


