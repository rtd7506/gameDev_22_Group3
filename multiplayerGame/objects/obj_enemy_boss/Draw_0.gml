/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_healthbar(x-48,y-80,x+48,y-96,_health*(100/health_max),c_black,c_red,c_green,0,true,true)

if showText{
	draw_set_color(c_red)
	draw_set_halign(fa_center);
	draw_text_ext(x,y-164,"Defeat the boss to escape!",25,200)
	draw_set_halign(fa_left);
}