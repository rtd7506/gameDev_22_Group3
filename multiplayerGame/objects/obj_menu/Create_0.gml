/// @description Insert description here
// You can write your code in this editor

start_x = 768
start_y = 64

for (var i = 0; i<5;i++){  //Create tabs on startup
	var tab = instance_create_depth(start_x+64*i,start_y,0,obj_tab)
	tab._id = i
}

screen = 0

for (var i = 0; i<3;i++){  //Create food items for sc2
	var food = instance_create_depth(857+96*i,532,0,obj_food_item)
	food.food_id = i
}


var rx = irandom_range(0,2)
var ry = irandom_range(0,2)
for (var i = 0; i<3;i++){  //Create food items for sc3
	for (var j = 0; j<3;j++){ 
		var option = instance_create_depth(857+96*i,348+96*j,0,obj_choose_option)
		if i == rx && j == ry{
			option.choice = true
		}else{
			option.choice = false
		}
	}
}

no_customer = true
option_next = false

instance_create_depth(1024,416,0,obj_shredder)
for (var i = 0; i<3;i++){  //Create food items for sc2
	var evidence = instance_create_depth(880-8*i,304+8*i,0,obj_evidence)
}

//instance_create_depth(960,545,301,obj_customer)