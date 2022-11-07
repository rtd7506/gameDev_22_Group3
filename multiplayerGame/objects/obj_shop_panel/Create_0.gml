/// @description Insert description here
// You can write your code in this editor

_type = irandom_range(0,2)
title_text_options = ["+3 Health","New Weapon","New Item","Stat Boost"]

title_text = "+3 Health"
sub_text = "Cost: $10"
control_text = "Press SPACE to buy"
possible_weapons = ["Sword","Crossbow","Mace"]

cost = 0
if _type == 0{
	cost = 50
}else if _type == 1{
	if array_length(obj_player.weapon_inventory) < array_length(possible_weapons){
		item = possible_weapons[array_length(obj_player.weapon_inventory)]
		cost = 100
	}else{
		_type = 0
		cost = 10
	}
}else if _type == 2{
	cost = 15
}else{
	cost = 10
}
