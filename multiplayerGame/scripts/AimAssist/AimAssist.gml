// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AimAssist(){
	var options = []
	var results = []
	var assist_range = 25
	var best_angle = "undefined"
	for (var i = 0; i < instance_number(obj_enemy_base); ++i;)
	{
		var test = instance_find(obj_enemy_base,i);
		if !(object_get_name(test.object_index) == "obj_gate" && obj_manager.boss){
			//options[i] = test
			array_push(options,test)
		}
		//show_debug_message(object_get_name(test.object_index))
	}
	for (var i = 0; i < array_length(options); ++i;)
	{
	    var angle = point_direction(obj_player.x,obj_player.y,options[i].x,options[i].y)
			if angle < move_dir+assist_range && angle > move_dir-assist_range{
			if best_angle == "undefined"{
				best_angle = angle
			}else if angle >= min(move_dir,best_angle) && angle <= max(move_dir,best_angle){
				best_angle = angle
			}
		}
		array_push(results,angle)
	}
	
	if best_angle == "undefined"{
		best_angle = move_dir
	}
	/*
	show_debug_message(string(results))
	show_debug_message(string(move_dir))
	show_debug_message(string(best_angle))
	*/
	return best_angle
	
}