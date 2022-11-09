/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_enemy_spawnee){
	instance_destroy()
}else{
	x = instance_nearest(x,y,obj_enemy_spawnee).x
	y = instance_nearest(x,y,obj_enemy_spawnee).y
}



image_index = dir



