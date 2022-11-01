/// @description Insert description here
// You can write your code in this editor

if grabbed {
	
	var lay_id = layer_get_id("Tiles_Dungeon")
	var map_id = layer_tilemap_get_id(lay_id)
	//show_debug_message(string(tilemap_get_at_pixel(map_id,x,y)))
	if tilemap_get_at_pixel(map_id,mouse_x,mouse_y) == 1 && !place_meeting(x,y,obj_player) && !place_meeting(x,y,obj_enemy){
		x = floor(mouse_x/(TILE_SIZE*2))*TILE_SIZE*2
		y = floor(mouse_y/(TILE_SIZE*2))*TILE_SIZE*2
		if mouse_check_button_released(mb_left){
			grabbed = false
			instance_create_layer(x,y,"Enemies",obj_enemy) //Spawn actual enemy
			MONEY -= 50
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



