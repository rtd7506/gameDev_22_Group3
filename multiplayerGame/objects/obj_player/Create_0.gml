/// @description Insert description here
// You can write your code in this editor

randomize()

mspd = 2.5

move_dir = 0

hspd = 0
vspd = 0

x_remainder = 0
y_remainder = 0

bumped_into_something = false

slash_dist = 20

hitting = false
hit_x = slash_dist
hit_y = 0

hurt = false
hurt_dir = 0
can_be_hurt = true

_health = 10
health_max = _health

curr_slot = 0
weapon_inventory = ["Sword"]//,"Crossbow","Mace"]
curr_weapon = weapon_inventory[curr_slot]
//weapon_names = ["Sword","Crossbow","Mace"]
show_switch_text = false
_lives = 3

shot_dist = 30

depth = -100