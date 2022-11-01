/// @description Insert description here
// You can write your code in this editor

start_x = 768
start_y = 64

for (var i = 0; i<2;i++){  //Create tabs on startup
	var tab = instance_create_depth(start_x+64*i,start_y,0,obj_tab)
	tab._id = i
}

screen = 0

