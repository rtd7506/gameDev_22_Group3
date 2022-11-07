/// @description Insert description here
// You can write your code in this editor

image_index = _type
if _type == 1{
	if array_length(obj_player.weapon_inventory) >= array_length(possible_weapons){
		_type = 0
		cost = 10
	}
	if array_length(obj_player.weapon_inventory) < array_length(possible_weapons){
		item = possible_weapons[array_length(obj_player.weapon_inventory)]
	}
}