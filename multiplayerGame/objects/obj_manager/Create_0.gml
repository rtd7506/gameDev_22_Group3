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

stage = 0
done = false