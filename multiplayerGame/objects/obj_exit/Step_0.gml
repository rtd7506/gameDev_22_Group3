/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	obj_player.x = 384
	obj_player.y = 576
	if !obj_manager.shop{
		obj_manager.stage += 1
		if obj_manager.stage == 6{
			obj_stat_manager.p_endLives = obj_player._lives
			obj_stat_manager.p_stagesReached = 5
			obj_stat_manager.p_victoryBonus = 1
			room_goto(rm_end)
		}
		instance_create_layer(576,496,"Instances",obj_shop_reroll)
		for (var i=0; i < 3; i++){
			//var shop_panel = 
			instance_create_layer(192,240+i*128,"Instances",obj_shop_panel)
		}
		instance_destroy(obj_enemy_base)
		obj_manager.shop = true
		obj_manager.done = false
		instance_destroy()
	}else{
		obj_manager.shop = false
		instance_destroy(obj_shop_panel)
		instance_destroy(obj_shop_reroll)
		for (var i=0; i < 2; i++){
			for (var j=0; j < 2; j++){
				//var gate = 
				instance_create_layer(208+i*352,272+j*224,"Enemies",obj_gate)
				
			}
		}
		if obj_manager.stage >= 5{
			instance_create_layer(384,288,"Enemies",obj_enemy_boss)
			obj_manager.boss = true
			//obj_manager.alarm[2] = 60
			obj_menu.screen = 0
		}else{
			obj_manager.alarm[1] = 240
		}
		obj_manager.done = false
		obj_manager.showStage = true
		obj_manager.alarm[3] = 60
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


