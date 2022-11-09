/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_font(pixel_font)
draw_set_color(c_black)
draw_set_halign(fa_center);
if screen == 1{
	draw_text_ext(960,564,task_blurbs[game_screen],25,300)
}
draw_set_halign(fa_left);

