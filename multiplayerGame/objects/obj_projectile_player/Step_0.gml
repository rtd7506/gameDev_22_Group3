/// @description Insert description here
// You can write your code in this editor

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

x += hspd
y+= vspd

if place_meeting(x,y,obj_no_move){
	instance_destroy()
}
/*
if place_meeting(x,y,obj_enemy_base){
	var en = instance_nearest(x,y,obj_enemy_base)
	en._health -= 2
	instance_destroy()
}
*/