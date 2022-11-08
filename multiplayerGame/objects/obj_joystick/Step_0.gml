/// @description Insert description here
// You can write your code in this editor
event_inherited()

if wrangled {
	dist = point_distance(x_anchor,y_anchor,mouse_x,mouse_y)
	if dist < max_dist{
		x = mouse_x
		y = mouse_y
	}else{
		x = x_anchor + lengthdir_x(max_dist,point_direction(x_anchor,y_anchor,mouse_x,mouse_y))
		y = y_anchor + lengthdir_y(max_dist,point_direction(x_anchor,y_anchor,mouse_x,mouse_y))
	}
	if instance_exists(obj_enemy_boss){
		if stick_id == 0 {
			obj_enemy_boss.can_attack = true
			obj_enemy_boss.attack_angle = point_direction(x_anchor,y_anchor,mouse_x,mouse_y)
		}else{
			obj_enemy_boss.moving = true
			obj_enemy_boss.move_dir = point_direction(x_anchor,y_anchor,mouse_x,mouse_y)
		}
	}
	if mouse_check_button_released(mb_left){
		wrangled = false
		x = x_anchor
		y = y_anchor
		if instance_exists(obj_enemy_boss){
			if stick_id == 0 {
				obj_enemy_boss.can_attack = false
			}else{
				obj_enemy_boss.moving = false
			}
		}
	}
}

/*
show_debug_message(string(obj_manager.stage))
show_debug_message(string(x))
show_debug_message(string(delta_time))
*/

