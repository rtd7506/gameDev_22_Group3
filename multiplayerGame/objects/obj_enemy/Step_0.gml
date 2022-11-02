/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -5 //Hit knockback
}else{
	if mspd < 1{
		mspd+=1
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()