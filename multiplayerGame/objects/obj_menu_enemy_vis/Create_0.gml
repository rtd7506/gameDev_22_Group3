/// @description Insert description here
// You can write your code in this editor

//This is the visal in the menu where the cursor grabs enemies from

event_inherited()

can_be_grabbed = false

_id = 0
sub_id = 0
x_pos = 860

image_xscale = 2
image_yscale = 2
image_speed = 0

cost_base = 50
cost = cost_base
type = obj_menu_enemy
enemy = obj_enemy
name = "ENEMY"
main_font = font_add("Pixel Coleco.otf",16,false,false,32,128)