/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
draw_set_font(Store_Font_small)
if place_meeting(x,y,obj_player){
	
	if _type == 1{
		draw_text(x+100,y,"Buy "+item)
	}else if _type == 2{
		draw_text(x+100,y,boost)
	}else{
		draw_text(x+100,y,title_text_options[_type])
	}
	draw_text(x+250,y,"Cost: $"+string(cost))
	if PLAYER_MONEY < cost{
		draw_set_color(c_red)
		draw_text(x+125,y+25,"Can not afford")
	}else{
		draw_set_color(c_yellow)
		draw_text(x+125,y+25,"Press SPACE to buy")
	}
	
	
	if keyboard_check_pressed(vk_space) && PLAYER_MONEY >= cost{
		
		if _type == 0{
			if obj_player._health < obj_player.health_max{
				obj_player._health += 3
				obj_player._health = clamp(obj_player._health,0,obj_player.health_max)
				PLAYER_MONEY -= cost
				audio_play_sound(snd_buy,10,false,1,0,1) 
				instance_destroy()
			}
		}else if _type == 1{
			PLAYER_MONEY -= cost
			array_push(obj_player.weapon_inventory,item)
			obj_player.curr_slot = array_length(obj_player.weapon_inventory)-1
			if obj_player.curr_slot > array_length(obj_player.weapon_inventory)-1{
				obj_player.curr_slot = 0
			}
			obj_player.show_switch_text = true
			obj_player.curr_weapon = obj_player.weapon_inventory[obj_player.curr_slot]
			obj_player.alarm[3] = 60
			audio_play_sound(snd_buy,10,false,1,0,1) 
			instance_destroy()
		}else if _type == 2{
			PLAYER_MONEY -= cost
			if boost == "+1 Damage"{
				obj_player.damage_boost+=1
			}else if boost == "+5 Max Health"{
				obj_player.health_max+=5
				obj_player._health+=5
			}else if boost == "+1 Speed"{
				obj_player.move_boost+=0.5
			}
			audio_play_sound(snd_buy,10,false,1,0,1) 
			instance_destroy()
		}else{
			PLAYER_MONEY -= cost
			audio_play_sound(snd_buy,10,false,1,0,1) 
			instance_destroy()
		}
		
	}
}


