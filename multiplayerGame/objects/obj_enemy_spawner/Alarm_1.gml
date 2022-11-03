/// @description Insert description here
// You can write your code in this editor



for (var i=0;i<4;i++){
	for (var j=0;j<4;j++){
		if !instance_position((x-TILE_SIZE*3)+TILE_SIZE*2*i,(y-TILE_SIZE*3)+TILE_SIZE*2*j,obj_collidable) && (i+j) % 3 != 0{
			//instance_create_depth((x-TILE_SIZE*3)+TILE_SIZE*2*i,(y-TILE_SIZE*3)+TILE_SIZE*2*j,-100,obj_enemy_spawnee)
			array_push(possible_spawn_posX,(x-TILE_SIZE*3)+TILE_SIZE*2*i)
			array_push(possible_spawn_posY,(y-TILE_SIZE*3)+TILE_SIZE*2*j)
		}
	}
}
if array_length(possible_spawn_posX) > 0{
	var r = irandom_range(0,array_length(possible_spawn_posX)-1)
	instance_create_depth(possible_spawn_posX[r],possible_spawn_posY[r],-100,obj_enemy_spawnee)
}
possible_spawn_posX = []
possible_spawn_posY = []
spawn_count+= 1

if spawn_count > spawn_limit-1{
	instance_destroy()
}
alarm[1] = spawnDelay