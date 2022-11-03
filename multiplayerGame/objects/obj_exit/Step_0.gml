/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	obj_player.x = 384
	obj_player.y = 608
	if !obj_manager.shop{
		obj_manager.stage += 1
		for (var i=0; i < 3; i++){
			var shop_panel = instance_create_layer(192,240+i*128,"Instances",obj_shop_panel)
			shop_panel._type = irandom_range(0,2)
		}
		instance_destroy(obj_enemy_base)
		obj_manager.shop = true
		obj_manager.done = false
		instance_destroy()
	}else{
		obj_manager.shop = false
		instance_destroy(obj_shop_panel)
		for (var i=0; i < 2; i++){
			for (var j=0; j < 2; j++){
				instance_create_layer(192+i*384,256+j*256,"Enemies",obj_gate)
			}
		}
		obj_manager.done = false
		instance_destroy()
	}
	
	layer_set_visible(layer_get_id("Tiles_Dungeon"),!obj_manager.shop)
	layer_set_visible(layer_get_id("Tiles_Shop"),obj_manager.shop)
	
	if !obj_manager.shop{
		instance_activate_layer(layer_get_id("tile_collisions"))
		instance_deactivate_layer(layer_get_id("tile_collisions_shop"))
	}else{
		instance_activate_layer(layer_get_id("tile_collisions_shop"))
		instance_deactivate_layer(layer_get_id("tile_collisions"))
	}
}


