/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -1.25 //Hit knockback
}else{
	if mspd < 0.25{
		mspd+=0.25
	}
	move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}

if move_dir < 135 && move_dir > 45{
	move_anim = spr_goblin_u_move
	attack_anim = spr_goblin_u_attack
	dir = 0
}else if move_dir < 45 || move_dir > 315{
	move_anim = spr_goblin_r_move
	attack_anim = spr_goblin_r_attack
	dir = 1
}else if move_dir < 315 && move_dir > 225{
	move_anim = spr_goblin_d_move
	attack_anim = spr_goblin_d_attack
	dir = 2
}else if move_dir < 225 && move_dir > 135{
	move_anim = spr_goblin_l_move
	attack_anim = spr_goblin_l_attack
	dir = 3
}

hspd = lengthdir_x(mspd,move_dir)
vspd = lengthdir_y(mspd,move_dir)

MoveCollide()
show_debug_message(attacking)
if can_fire { 
	can_fire = false
	attacking = true
	image_index = 0
	alarm[2] = fire_rate 
	/*
	var _dir = point_direction(x,y,obj_player.x,obj_player.y)
	var _spd = proj_speed
	
	var _inst = instance_create_layer(x,y,"Instances",obj_projectile_brute)
	with _inst { 
		speed = _spd
		direction = _dir
		image_angle = _dir
		damage = 0
	} 
	alarm[3] = 20
	*/
}

if !attacking{
	sprite_index = move_anim
}else{
	sprite_index = attack_anim
	if image_speed > 0{
		if image_index > image_number - 1{
			attacking = false
		}
		if image_index == 4{
			alarm[2] = fire_rate 
	
			var _dir = point_direction(x,y,obj_player.x,obj_player.y)
			var _spd = proj_speed
	
			var _inst = instance_create_layer(x,y,"Instances",obj_projectile_brute)
			with _inst { 
				speed = _spd
				direction = _dir
				image_angle = _dir
				damage = 0
			} 
		}
	}
}