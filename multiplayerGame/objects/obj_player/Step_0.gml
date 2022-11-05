event_inherited();

if keyboard_check(ord("W")){        // 90 degree angle to move up
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
	mspd = 1.5
}else{
	mspd = 2.5
}
if !hurt && can_be_hurt{
	if collision_circle(x,y,16,obj_enemy_spawnee,false,false){ //Detect when hurt by enemy
		//show_debug_message("GOT HURT")
		hurt = true;
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy_spawnee)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		_health -= 1
		if (_health < 1){
			room_restart()
		}
	}else if collision_circle(x,y,16,obj_enemy,false,false){ //Detect when hurt by enemy
		//show_debug_message("GOT HURT")
		hurt = true;
		can_be_hurt = false
		var en = instance_nearest(x,y,obj_enemy)
		hurt_dir = point_direction(x,y,en.x,en.y)
		alarm[1] = 10
		alarm[2] = 30
		_health -= 2
		if (_health < 1){
			room_restart()
		}
	}
}
if hurt{
	mspd = -2.5
	move_dir = lerp(move_dir,hurt_dir,0.5)
	image_blend = c_red
}else{
	image_blend = c_white
}
hspd = lengthdir_x(mspd,move_dir)    // find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)


if keyboard_check(ord("W"))
or keyboard_check(ord("A"))
or keyboard_check(ord("S"))
or keyboard_check(ord("D"))
or hurt{        // if pressing any move keys, move player!
    MoveCollide()
}


if (keyboard_check_pressed(vk_space) && hitting == false && !place_meeting(x,y,obj_shop_panel)){
	hitting = true
	if curr_weapon == 0{
		hit_x = lengthdir_x(slash_dist,move_dir)   
		hit_y = lengthdir_y(slash_dist,move_dir)
		var slash = instance_create_depth(x+hit_x,y+hit_y,-1000,obj_slash) //Create slash hitbox
		slash.hit_x = hit_x
		slash.hit_y = hit_y
		slash.image_angle = move_dir+90
		alarm[0] = 30
	}
}


