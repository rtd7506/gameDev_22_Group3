/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
draw_set_font(Store_Font)
if place_meeting(x,y,obj_player){
	draw_text(x+100,y,title_text_options[_type])
	draw_text(x+250,y,"Cost: $"+string(cost))
	if PLAYER_MONEY < cost{
		draw_set_color(c_red)
		draw_text(x+125,y+25,"Can not afford")
	}else{
		draw_set_color(c_yellow)
		draw_text(x+125,y+25,"Press SPACE to buy")
	}
	
	
	if keyboard_check_pressed(vk_space) && PLAYER_MONEY >= cost{
		PLAYER_MONEY -= cost
		if _type == 0{
			obj_player._health += 3
			obj_player._health = clamp(obj_player._health,0,obj_player.health_max)
		}else if _type == 1{
			
		}else if _type == 2{

		}else{
			
		}
		instance_destroy()
	}
}


