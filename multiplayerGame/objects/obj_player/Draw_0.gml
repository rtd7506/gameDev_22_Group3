/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_healthbar(x-32,y-54,x+32,y-40,_health*100/health_max,c_black,c_red,c_green,0,true,true)

if show_switch_text{
	draw_set_color(c_white)
	draw_text(x-25,y-75,curr_weapon)
}