/// @description Insert description here
// You can write your code in this editor

randomize()

mspd = 3

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

slash_anim = 0

move_boost = 0
health_boost = 0
damage_boost = 0

depth = -100

image_xscale = 2
image_yscale = 2

attack_dir = 0
attacking_dir = 0

idle_anim = spr_player_d_idle
move_anim = spr_player_d_move
attack_anim = spr_player_d_attack

//Tutorial Checks
tutorial_text = ["Use WASD to Move","Press SPACE to attack","Use the Arrow Keys to Aim","Destroy all the gates to escape"]
hasMoved = false
hasAimed = false
hasAttacked = false
hasGated = false
hasCashed = false
hasSwitched = false
showSwitch = false
tutorial_progress = 0

main_font = font_add("Pixel Coleco.otf",16,false,false,32,128)