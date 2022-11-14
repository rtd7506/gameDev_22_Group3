/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
draw_set_font(pixel_font)
if place_meeting(x,y,obj_player){
	

	draw_text(x-300,y,"Reroll Shop Items")

	draw_text(x-100,y,"Cost: $"+string(cost))
	if PLAYER_MONEY < cost{
		draw_set_color(c_red)
		draw_text(x-275,y+25,"Can not afford")
	}else{
		draw_set_color(c_yellow)
		draw_text(x-275,y+25,"Press SPACE to buy")
	}
	

	if keyboard_check_pressed(vk_space) && PLAYER_MONEY >= cost{
		PLAYER_MONEY -= cost
		audio_play_sound(snd_buy,10,false,1,0,1) 
		cost *= 2
		instance_destroy(obj_shop_panel)
		for (var i=0; i < 3; i++){
			instance_create_layer(192,240+i*128,"Instances",obj_shop_panel)
		}
		
	}
}


