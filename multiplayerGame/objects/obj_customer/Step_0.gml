/// @description Insert description here
// You can write your code in this editor

event_inherited()
if obj_menu.screen == _id{
	if !leaving{
		if y > end_y{
			y-= 5
		}else{
			active = true
		
		}
	}
	if collision_rectangle(x,y,x+200,y+200,obj_food_item,false,false){
		var food = instance_nearest(x,y,obj_food_item)
		if food.falling && food.food_id == want && !leaving{
			leaving = true
			active = false
			MONEY += 100
		}
	}
	if leaving{
		y+=5
		if y > 545{
			obj_menu.no_customer = true
			instance_destroy()
		}
	}
}

if active{
	image_blend = c_white
}else{
	image_blend = c_grey
}