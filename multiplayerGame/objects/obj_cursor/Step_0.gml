/// @description Insert description here
// You can write your code in this editor

x = mouse_x //Follow cursor
y = mouse_y

if mouse_check_button_pressed(mb_left){ //Do all mouse interactions
	if place_meeting(x,y,obj_menu_enemy_vis){
		var menu_vis = instance_nearest(x,y,obj_menu_enemy_vis)
		if menu_vis.can_be_grabbed{
			var menu_en = instance_create_depth(x,y,-1000,obj_menu_enemy)
			menu_en.grabbed = true
		}
	}
	if place_meeting(x,y,obj_tab){ //collision_circle(mouse_x,mouse_y,1,obj_tab,false,false)
		var tab = instance_position(x,y,obj_tab)
		if !instance_position(x,y,obj_tab){
			tab = instance_nearest(x,y,obj_tab)
		}
		obj_menu.screen = tab._id
		show_debug_message(string(obj_menu.screen))
	}
	
	if place_meeting(x,y,obj_money_button){
		//var tab = instance_nearest(x,y,obj_tab)
		//obj_menu.screen = tab._id
		MONEY += 10
	}
}
