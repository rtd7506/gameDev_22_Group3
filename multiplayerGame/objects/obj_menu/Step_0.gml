/// @description Insert description here
// You can write your code in this editor




if screen == 0{
	image_index = screen
}else if screen == 1{
	image_index = game_screen+2
}

if no_customer == true{
	no_customer = false
	alarm[0] = irandom_range(60,180)
}

if option_next{
	alarm[1] = 60
	option_next = false
}

if next_task || keyboard_check_pressed(ord("T")){
	next_task = false
	task_progress += 1
	if task_progress > array_length(order)-1{
		order = []
		shuffle = [0,1,2,3,4]
		rep = array_length(shuffle)
		for (var i = 0; i<rep;i++){
			var r = irandom_range(0,array_length(shuffle)-1)
			array_push(order,shuffle[r])
			array_delete(shuffle,r,1)
		}
		show_debug_message(string(order))
		task_progress = 0
	}
	game_screen = order[task_progress]
}

if new_doc{
	instance_create_depth(864,288,0,obj_document)
	new_doc = false
}

if game_screen == 3 && screen == 1 && doc_count > 4{
	next_task = true
	doc_count = 0
}