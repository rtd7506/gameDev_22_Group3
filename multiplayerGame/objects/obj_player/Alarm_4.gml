/// @description Slash Delay
// You can write your code in this editor

hit_x = lengthdir_x(slash_dist,attack_dir)   
hit_y = lengthdir_y(slash_dist,attack_dir)
var slash = instance_create_depth(x+hit_x,y+hit_y,-1000,obj_slash) //Create slash hitbox
slash.hit_x = hit_x
slash.hit_y = hit_y
slash.image_angle = attack_dir+90
		
alarm[0] = 30



