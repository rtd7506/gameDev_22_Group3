/// @description Insert description here
// You can write your code in this editor

if screen == 0{
	image_index = screen
}else if screen == 1{
	image_index = game_screen+2
}

if no_customer == true{
	cust_count+= 1
	if cust_count > 2{
		next_task = true
		cust_count = -1
	}else{
		no_customer = false
		alarm[0] = irandom_range(60,180)
	}
}

if option_next{
	option_count+=1
	if option_count > 3{
		next_task = true
		option_count = 0
	}else{
		alarm[1] = 60
		option_next = false
	}
}

if next_task{
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
		//show_debug_message(string(order))
		task_progress = 0
	}
	game_screen = order[task_progress]
}

if new_doc{
	instance_create_depth(864,240,0,obj_document)
	new_doc = false
}

if game_screen == 3 && screen == 1 && doc_count > 4{
	next_task = true
	doc_count = 0
}

if screen == 2{
	image_index = 1
}
if screen == 3{
	image_index = 7
	if obj_manager.stage > 3 && !hasBossed{
		hasBossed = true
	}
}