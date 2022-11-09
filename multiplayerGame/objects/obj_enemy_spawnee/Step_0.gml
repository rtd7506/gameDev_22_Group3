/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -5 //Hit knockback
}else{
	if mspd < 0.25{
		mspd+=0.25
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}


hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()

if move_dir > 270 || move_dir <= 90{
	image_xscale = 2
}else{
	image_xscale = -2
}