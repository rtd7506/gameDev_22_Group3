/// @description Insert description here
// You can write your code in this editor

mspd -= 0.1


if mspd > 0.1{
	hspd = lengthdir_x(mspd,move_dir)
	vspd = lengthdir_y(mspd,move_dir)
	MoveCollide()
}

if obj_manager.shop{
	instance_destroy()
}

if place_meeting(x,y,obj_player){
	PLAYER_MONEY += 10
	instance_destroy()
}