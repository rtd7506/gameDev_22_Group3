/// @description Insert description here
// You can write your code in this editor

if !boss{
	x = mouse_x //Follow cursor
	y = mouse_y
}else{
	move_dir = point_direction(x,y,mouse_x,mouse_y)
	hspd = lengthdir_x(mspd,move_dir)
	vspd = lengthdir_y(mspd,move_dir)
	x += hspd
	y += vspd
	//MoveCollide()
	
	x = clamp(x,80,690)
	y = clamp(y,140,600)
	
}
if mouse_check_button_pressed(mb_left){ //Do all mouse interactions
	if place_meeting(x,y,obj_menu_enemy_vis){
		var menu_vis = instance_nearest(x,y,obj_menu_enemy_vis)
		if menu_vis.can_be_grabbed{
			var menu_en = instance_create_depth(x,y,-1000,menu_vis.type)
			menu_en.grabbed = true
		}
	}
	if place_meeting(x,y,obj_tab){ //collision_circle(mouse_x,mouse_y,1,obj_tab,false,false)
		var tab = instance_position(x,y,obj_tab)
		if !instance_position(x,y,obj_tab){
			tab = instance_nearest(x,y,obj_tab)
		}
		if tab.active{
			obj_menu.screen = tab._id
		}
		//show_debug_message(string(obj_menu.screen))
	}
	
	if place_meeting(x,y,obj_money_button){
		//var tab = instance_nearest(x,y,obj_tab)
		//obj_menu.screen = tab._id
		AddMoney(x,y,10)
	}
	if place_meeting(x,y,obj_food_item){
		var food_item = instance_nearest(x,y,obj_food_item)
		if food_item.can_be_grabbed{
			food_item.grabbed = true
		}
		grab_task = true
	}
	if place_meeting(x,y,obj_choose_option){
		var option = instance_nearest(x,y,obj_choose_option)
		if option.choice{
			MONEY += 50
			instance_destroy(option)
			obj_menu.option_next = true
		}
	}
	if place_meeting(x,y,obj_evidence){
		var evidence = instance_nearest(x,y,obj_evidence)
		if evidence.can_be_grabbed{
			evidence.grabbed = true
		}
		grab_task = true
	}
	if place_meeting(x,y,obj_crank){
		var crank = instance_nearest(x,y,obj_crank)
		if !crank.stop {
			crank.cranking = true
		}
	}
	if place_meeting(x,y,obj_turret){
		var turret = instance_nearest(x,y,obj_turret)
		turret.wrangled = true
	}
	if place_meeting(x,y,obj_boss_shop){
		var boss_shop = instance_nearest(x,y,obj_boss_shop)
		if MONEY >= boss_shop.cost{
			MONEY -= boss_shop.cost
			if boss_shop._type == 0{
				obj_manager.boss_boost_damage += 1
			}else if boss_shop._type == 1{
				obj_manager.boss_boost_health += 5
			}else if boss_shop._type == 2{
				obj_manager.boss_boost_speed += 0.25
			}
			boss_shop.uses+=1
		}
	}
	if place_meeting(x,y,obj_joystick){
		var stick = instance_nearest(x,y,obj_joystick)
		stick.wrangled = true
	}
	if place_meeting(x,y,obj_manager_ready){
		var button = instance_nearest(x,y,obj_manager_ready)
		if button.ready{
			button.ready = false
		}else{
			button.ready = true
		}
	}
}

if mouse_check_button(mb_left){
	if place_meeting(x,y,obj_document)&& !collision_circle(x,y,0.5,obj_ink,false,false){ //  
		instance_create_depth(x,y,-1000,obj_ink)
	}
}

if mouse_check_button_released(mb_left){
	grab_task = false
}

if grab_task && x < 736{
	image_index = 1
}else{
	image_index = 0
}