/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -5 //Hit knockback
}else{
	if mspd < 0.5{
		mspd+=0.5
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}

if move_dir < 135 && move_dir > 45{
	move_anim = spr_skeleton_u_move
	attack_anim = spr_skeleton_u_attack
	dir = 0
}else if move_dir < 45 || move_dir > 315{
	move_anim = spr_skeleton_r_move
	attack_anim = spr_skeleton_r_attack
	dir = 1
}else if move_dir < 315 && move_dir > 225{
	move_anim = spr_skeleton_d_move
	attack_anim = spr_skeleton_d_attack
	dir = 2
}else if move_dir < 225 && move_dir > 135{
	move_anim = spr_skeleton_l_move
	attack_anim = spr_skeleton_l_attack
	dir = 3
}

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()

if point_distance(x,y,obj_player.x,obj_player.y) < 100 && !attacking && can_attack{
	attacking = true
	can_attack = false
	alarm[2] = attack_delay
}




if !attacking{
	sprite_index = move_anim
}else{
	sprite_index = attack_anim
	if image_speed > 0{
		if image_index > image_number - 1{
			attacking = false
		}
		if image_index == 6{
			var slash = instance_create_depth(x,y,0,obj_enemy_slash)
			with slash{
				slash._parent = object_index
			}
		}
	}
}
