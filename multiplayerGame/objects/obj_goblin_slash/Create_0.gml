/// @description Insert description here
// You can write your code in this editor

image_speed = 0
image_xscale = 3
image_yscale = 3
if !instance_exists(obj_enemy_spawnee){
	instance_destroy()
}

dir = instance_nearest(x,y,obj_enemy_spawnee).dir

alarm[0] = 6


