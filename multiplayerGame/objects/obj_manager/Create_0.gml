/// @description Insert description here
// You can write your code in this editor

globalvar TILE_SIZE;
TILE_SIZE = 16

globalvar GRID_WIDTH;

globalvar GRID_HEIGHT;

GRID_WIDTH = room_width/TILE_SIZE
GRID_HEIGHT = room_height/TILE_SIZE

globalvar MAIN_GRID;
MAIN_GRID = mp_grid_create(0,0,GRID_WIDTH,GRID_HEIGHT,TILE_SIZE,TILE_SIZE);
alarm[0] = 1

globalvar MONEY;
MONEY = 150;
alarm[1] = 120

globalvar PLAYER_MONEY;
PLAYER_MONEY = 0;


stage = 0
done = false
shop = false

for (var i=0; i < 2; i++){
	for (var j=0; j < 2; j++){
		instance_create_layer(208+i*352,272+j*224,"Enemies",obj_gate)
	}
}

layer_set_visible(layer_get_id("Tiles_Dungeon"),!shop)
	layer_set_visible(layer_get_id("Tiles_Shop"),shop)
	
	if !shop{
		instance_activate_layer(layer_get_id("tile_collisions"))
		instance_deactivate_layer(layer_get_id("tile_collisions_shop"))
	}else{
		instance_activate_layer(layer_get_id("tile_collisions_shop"))
		instance_deactivate_layer(layer_get_id("tile_collisions"))
	}