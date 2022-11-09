/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_black)
draw_set_font(pixel_font)
draw_text(x+50,y-30,"Buy "+string(name))

if MONEY < cost{
	draw_set_color(c_red)
}else{
	draw_set_color(c_black)
}
if obj_manager.boss{
	draw_text(x+50,y,"Cost: "+string(round(cost)/2))
}else{
	draw_text(x+50,y,"Cost: "+string(cost))
}











