/// @description Insert description here
// You can write your code in this editor

event_inherited()

if hit{
	move_dir = hit_dir
	mspd = -1.25 //Hit knockback
}else{
	if mspd < 1+obj_manager.boss_boost_speed{
		mspd+=0.25
	}
	//move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player
}
var dir = point_direction(x,y,obj_player.x,obj_player.y)
if dir < 135 && dir > 45{
	idle_anim = spr_boss_u_idle
	move_anim = spr_boss_u_move
	attack_anim = spr_boss_u_attack
	hurt_anim = spr_boss_u_hurt
	attack_dir = 0
}else if dir < 45 || dir > 315{
	idle_anim = spr_boss_r_idle
	move_anim = spr_boss_r_move
	attack_anim = spr_boss_r_attack
	hurt_anim = spr_boss_r_hurt
	attack_dir = 1
}else if dir < 315 && dir > 225{
	idle_anim = spr_boss_d_idle
	move_anim = spr_boss_d_move
	attack_anim = spr_boss_d_attack
	hurt_anim = spr_boss_d_hurt
	attack_dir = 2
}else if dir < 225 && dir > 135{
	idle_anim = spr_boss_l_idle
	move_anim = spr_boss_l_move
	attack_anim = spr_boss_l_attack
	hurt_anim = spr_boss_l_hurt
	attack_dir = 3
}
//show_debug_message(point_direction(x,y,obj_player.x,obj_player.y))

if attacking{
	if image_speed > 0{
		if image_index > image_number - 1{
			attacking = false
		}
		if image_index == 3{
			swing = 0
			instance_create_depth(x,y,0,obj_boss_slash)
		}else if image_index == 8{
			swing = 1
			instance_create_depth(x,y,0,obj_boss_slash)
		}
	}
}else if moving{
	sprite_index = move_anim
	//show_debug_message(move_anim)
	//hspd = lengthdir_x(mspd,move_dir)
	//vspd = lengthdir_y(mspd,move_dir)
	//show_debug_message("AAAAA")
	MoveCollide()
}else{
	hspd = 0
	vspd = 0
	sprite_index = idle_anim
}



if can_attack{
	if can_fire { 
		can_fire = false 
		alarm[2] = fire_rate 
	
		var _dir = attack_angle
		var _spd = proj_speed
	
		var _inst = instance_create_layer(x,y,"Instances",obj_projectile_brute)
		with _inst { 
			speed = _spd
			direction = _dir
			image_angle = _dir
			_inst.damage = obj_manager.boss_boost_damage
		} 
	}
}

if point_distance(x,y,obj_player.x,obj_player.y) < 200 && !attempting_attack && !attacking{
	alarm[4] = 60
	attempting_attack = true
}