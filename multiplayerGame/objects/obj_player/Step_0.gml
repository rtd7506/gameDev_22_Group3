event_inherited();

if keyboard_check(ord("W")){ 
	// 90 degree angle to move up
    move_dir = 90
    if keyboard_check(ord("A")){
        move_dir += 45                // +45 for up-left
    }else
    if keyboard_check(ord("D")){
        move_dir -= 45                // -45 for up-right
    }
}else
if keyboard_check(ord("S")){
    move_dir = 270                    // 270 degree angle to move down
    if keyboard_check(ord("A")){
        move_dir -= 45                // -45 for down-left
    }else
    if keyboard_check(ord("D")){
        move_dir += 45                // +45 for down-right
    }
}else{
    if keyboard_check(ord("A")){
        move_dir = 180                // 180 degree angle to move left
    }else
    if keyboard_check(ord("D")){
        move_dir = 0                // 0 degrees to move right
    }
}
if hitting{ //Slow down player when swinging
	mspd = 1.5+move_boost
}else{
	mspd = 2.5+move_boost
}
if !hurt && can_be_hurt{
	if collision_circle(x,y+4,24,obj_enemy_spawnee,false,false){ //Detect when hurt by enemy
		//show_debug_message("GOT HURT")
		hurt = true;
		audio_play_sound(snd_damage, 1, 0)
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy_spawnee)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		if obj_manager.boss = true{
			_health -= 0.5
		}else{
			_health -= 1
		}
	/*}else if collision_circle(x,y+4,24,obj_enemy,false,false){ //Detect when hurt by enemy
		
		//show_debug_message("GOT HURT")
		hurt = true;
		audio_play_sound(snd_damage, 1, 0)
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		if obj_manager.boss = true{
			_health -= 1
		}else{
			_health -= 2
		}
		*/
	}else if place_meeting(x,y,obj_boss_slash){
		hurt = true;
		audio_play_sound(snd_damage, 1, 0)
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy_boss)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		_health -= 2+obj_manager.boss_boost_damage
	}else if place_meeting(x,y,obj_enemy_slash){
		hurt = true;
		audio_play_sound(snd_damage, 1, 0)
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		if obj_manager.boss = true{
			_health -= 1
		}else{
			_health -= 2
		}
	}
	
	if (_health < 1){
		x = 384
		y = 576
		if place_meeting(x,y,obj_enemy_base){
			instance_destroy(instance_nearest(x,y,obj_enemy_base))
		}
		_health = health_max
		_lives -= 1
		if _lives < 1{
			room_goto(rm_end)
		}
	}
}

if hurt{
	//audio_play_sound(snd_damage,10,false) 
	mspd = -2.5
	move_dir = lerp(move_dir,hurt_dir,0.5)
	image_blend = c_red
}else{
	image_blend = c_white
}
hspd = lengthdir_x(mspd,move_dir)    // find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)
/*
if attack_dir > 270 || attack_dir <= 90{
	image_xscale = 2
}else{
	image_xscale = -2
}
*/
if attack_dir < 135 && attack_dir > 45{
	idle_anim = spr_player_u_idle
	move_anim = spr_player_u_move
	attack_anim = spr_player_u_attack
	attacking_dir = 0
}else if attack_dir < 45 || attack_dir > 315{
	idle_anim = spr_player_r_idle
	move_anim = spr_player_r_move
	attack_anim = spr_player_r_attack
	attacking_dir = 1
}else if attack_dir < 315 && attack_dir > 225{
	idle_anim = spr_player_d_idle
	move_anim = spr_player_d_move
	attack_anim = spr_player_d_attack
	attacking_dir = 2
}else if attack_dir < 225 && attack_dir > 135{
	idle_anim = spr_player_l_idle
	move_anim = spr_player_l_move
	attack_anim = spr_player_l_attack
	attacking_dir = 3
}


if keyboard_check(ord("W"))
or keyboard_check(ord("A"))
or keyboard_check(ord("S"))
or keyboard_check(ord("D"))
or hurt{        // if pressing any move keys, move player!
    MoveCollide()
	if !hitting{
		sprite_index = move_anim
	}
}else{
	if !hitting{
		sprite_index = idle_anim
		audio_stop_sound(snd_footsteps)
	}
	
	/*
	if keyboard_check(vk_left){
		attack_dir = 180
	}else if keyboard_check(vk_right){
		attack_dir = 0
	}else if keyboard_check(vk_up){
		attack_dir = 270
	}else if keyboard_check(vk_down){
		attack_dir = 90
	}
	*/
}

if keyboard_check(vk_up)
or keyboard_check(vk_right)
or keyboard_check(vk_down)
or keyboard_check(vk_left){
	if keyboard_check(vk_up){ 
		// 90 degree angle to move up
	    attack_dir = 90
	    if keyboard_check(vk_left){
	        attack_dir += 45                // +45 for up-left
	    }else
	    if keyboard_check(vk_right){
	        attack_dir -= 45                // -45 for up-right
	    }
	}else
	if keyboard_check(vk_down){
	    attack_dir = 270                    // 270 degree angle to move down
	    if keyboard_check(vk_left){
	        attack_dir -= 45                // -45 for down-left
	    }else
	    if keyboard_check(vk_right){
	        attack_dir += 45                // +45 for down-right
	    }
	}else{
	    if keyboard_check(vk_left){
	        attack_dir = 180                // 180 degree angle to move left
	    }else
	    if keyboard_check(vk_right){
	        attack_dir = 0                // 0 degrees to move right
	    }
	}
}else{
	attack_dir = move_dir
}

if hitting{
	sprite_index = attack_anim
	image_index = slash_anim
}

if (keyboard_check_pressed(vk_space) && hitting == false && !place_meeting(x,y,obj_shop_panel)){
	if curr_weapon == "Sword"{
		hitting = true
		image_index = 0
		alarm[4] = 16
		slash_anim = 0
		alarm[5] = 10
		audio_play_sound(snd_sword,10,false,1,0,random_range(1,2)) 
		
		
	}else if curr_weapon == "Crossbow"{
		hitting = true
		var shot_dir = AimAssist()
		hit_x = lengthdir_x(shot_dist,shot_dir)   
		hit_y = lengthdir_y(shot_dist,shot_dir)
		var shot = instance_create_depth(x+hit_x,y+hit_y,-1000,obj_projectile_player)
		shot.move_dir = shot_dir
		shot.image_angle = shot_dir+90
		alarm[0] = 30
	}else if curr_weapon == "Mace"{
		hitting = true
		hit_x = lengthdir_x(slash_dist,attack_dir)   
		hit_y = lengthdir_y(slash_dist,attack_dir)
		var slash = instance_create_depth(x+hit_x,y+hit_y,-1000,obj_swing) //Create slash hitbox
		slash.hit_x = hit_x
		slash.hit_y = hit_y
		slash.image_angle = attack_dir+90
		alarm[0] = 90
	}
}

if keyboard_check_pressed(ord("Q")) && array_length(weapon_inventory) > 1{
	curr_slot += 1
	if curr_slot > array_length(weapon_inventory)-1{
		curr_slot = 0
	}
	show_switch_text = true
	curr_weapon = weapon_inventory[curr_slot]
	alarm[3] = 60
}

