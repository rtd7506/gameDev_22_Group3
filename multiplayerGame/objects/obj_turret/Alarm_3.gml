/// @description Shoot
// You can write your code in this editor


var _dir = image_angle 
var _inst = instance_create_layer(x,y,"Instances",obj_projectile)
with _inst { 
	speed = obj_turret.proj_speed 
	direction = _dir
	image_angle = _dir
} 
fire_count+=1
if fire_count > 2{
	fire_count = 0
}else{
	alarm[3] = fire_rate
}

