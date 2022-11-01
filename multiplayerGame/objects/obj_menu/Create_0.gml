/// @description Insert description here
// You can write your code in this editor

start_x = 768
start_y = 64

for (var i = 0; i<3;i++){  //Create tabs on startup
	var tab = instance_create_depth(start_x+64*i,start_y,0,obj_tab)
	tab._id = i
}

screen = 0

for (var i = 0; i<3;i++){  //Create food items for sc2
	var food = instance_create_depth(start_x+64*i,878,0,obj_food_item)
	food.food_id = i
}