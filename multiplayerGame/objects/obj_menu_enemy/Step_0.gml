/// @description Insert description here
// You can write your code in this editor

if grabbed {
	
	var lay_id = layer_get_id("Tiles_Dungeon")
	var map_id = layer_tilemap_get_id(lay_id)
	//show_debug_message(string(tilemap_get_at_pixel(map_id,x,y)))
	if tilemap_get_at_pixel(map_id,mouse_x,mouse_y) == 1 && !place_meeting(x,y,obj_player) && !place_meeting(x,y,obj_enemy_base) && !obj_manager.shop{
		x = round(mouse_x/(TILE_SIZE*2))*TILE_SIZE*2+offset
		y = round(mouse_y/(TILE_SIZE*2))*TILE_SIZE*2+offset
		if mouse_check_button_released(mb_left){
			grabbed = false
			instance_create_layer(x,y,"Enemies",type) //Spawn actual enemy
			MONEY -= cost
			audio_play_sound(snd_buy, 1, 0)
			instance_destroy()
		}
	}else{
		x = mouse_x
		y = mouse_y
		if mouse_check_button_released(mb_left){
			grabbed = false
			instance_destroy()
		}
	}
	
}



