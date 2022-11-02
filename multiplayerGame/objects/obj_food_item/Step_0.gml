/// @description Insert description here
// You can write your code in this editor

event_inherited()

image_index = food_id

//x = 100
//y = 100

if grabbed{
	x_offset = mouse_x-x_pos
	y = mouse_y
	if mouse_check_button_released(mb_left){
		grabbed = false
		falling = true
		can_be_grabbed = false
		depth = 300
		//instance_destroy()
	}
}

if falling{
	y += grav
	if y > 532 || !place_meeting(x,y,obj_menu){
		var food = instance_create_depth(857+96*food_id,532,0,obj_food_item)
		food.food_id = food_id
		instance_destroy()
	}
}
