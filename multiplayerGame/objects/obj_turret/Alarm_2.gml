/// @description Insert description here
// You can write your code in this editor
charge_count += 1
if charge_count >= charge_max{
	can_fire = true
	charge_count = 0
}else{
	alarm[2] = fire_cooldown
}


