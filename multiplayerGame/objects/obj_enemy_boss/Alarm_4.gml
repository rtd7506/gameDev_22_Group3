/// @description Attempt attack
// You can write your code in this editor

var r = irandom_range(0,attack_chance)


if r == 0{
	attacking = true
	sprite_index = attack_anim
	image_index = 0
	image_speed = 0
	alarm[5] = attack_delay
}

attempting_attack = false

