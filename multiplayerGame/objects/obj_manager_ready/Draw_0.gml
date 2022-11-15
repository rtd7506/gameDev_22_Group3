/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_set_font(title_font)
draw_set_halign(fa_center);




if ready{
	draw_text(x,y-12,"CLICK to Cancel")
	image_index = 1
}else{
	draw_text(x,y-12,"CLICK to Ready Up")
	image_index = 0
}
draw_set_halign(fa_left);