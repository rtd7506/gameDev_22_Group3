/// @description Insert description here
// You can write your code in this editor

start_x = 768
start_y = 64

for (var i = 0; i<3;i++){  //Create tabs on startup
	var tab = instance_create_depth(start_x+128*i,start_y,0,obj_tab)
	tab._id = i
}

screen = 0
game_screen = 0

for (var i = 0; i<3;i++){  //Create food items for sc2
	var food = instance_create_depth(857+96*i,532,0,obj_food_item)
	food.food_id = i
}


var rx = irandom_range(0,2)
var ry = irandom_range(0,2)
for (var i = 0; i<3;i++){  //Create food items for sc3
	for (var j = 0; j<3;j++){ 
		var option = instance_create_depth(857+96*i,268+96*j,0,obj_choose_option)
		if i == rx && j == ry{
			option.choice = true
		}else{
			option.choice = false
		}
	}
}
cust_count = -1
no_customer = true


option_count = 0
option_next = false

instance_create_depth(1024,384,0,obj_shredder)
for (var i = 0; i<3;i++){  //Create food items for sc2
	//var evidence = 
	instance_create_depth(880-8*i,304+8*i,0,obj_evidence)
}

instance_create_depth(864,240,0,obj_document)
new_doc = false
//instance_create_depth(960,545,301,obj_customer)
doc_count = 0

next_task = true

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

for (var i = 0; i<3;i++){
	var boss_shop = instance_create_depth(832,240+96*i,0,obj_boss_shop)
	boss_shop._type = i
}

for (var i = 0; i<2;i++){
	var stick_b = instance_create_depth(880+i*160,480,0,obj_joystick_base)
	with stick_b{
		stick_b.stick_id = i
	}
	var stick = instance_create_layer(880+i*160,480,0,obj_joystick)
	with stick{
		stick.stick_id = i
	}
	//instance_create_layer(x_pos,y,"Instances",obj_joystick)
}

task_blurbs = ["Drag the proper food to the customer","Click the odd one out","Drag the evidence into the shredder","Drag the cursor to sign important documents","Turn the crank counterclockwise"]

main_font = font_add("Pixel Coleco.otf",16,false,false,32,128)

hasBossed = false