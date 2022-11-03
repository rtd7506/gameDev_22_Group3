/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	obj_manager.stage += 1
	obj_player.x = 384
	obj_player.y = 384
	instance_destroy(obj_enemy_base)
	for (var i=0; i < 2; i++){
		for (var j=0; j < 2; j++){
			instance_create_layer(192+i*384,256+j*256,"Enemies",obj_gate)
		}
	}
	obj_manager.done = false
	instance_destroy()
}


