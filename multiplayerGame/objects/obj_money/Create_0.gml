/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_collidable){
	instance_destroy()
}

image_angle = irandom_range(-30,30)

mspd = 5
x_remainder = 0
y_remainder = 0

bumped_into_something = false

side = irandom_range(0,3)
side_x = irandom_range(0,1)
side_y = irandom_range(0,1)
if side == 0{
	x = 100
	y = irandom_range(175,575)
}else if side == 1{
	x = 650
	y = irandom_range(175,575)
}else if side == 2{
	x = irandom_range(100,650)
	y = 175
}else if side == 3{
	x = irandom_range(100,650)
	y = 575
}

move_dir = point_direction(x,y,obj_player.x,obj_player.y) //Move towards player