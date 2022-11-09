/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_set_font(pixel_font)
draw_text(x+50,y-30,"Buy "+string(name))

if obj_manager.boss{
	cost = floor(cost_base/2)
}

if MONEY < cost{
	draw_set_color(c_red)
}else{
	draw_set_color(c_black)
}

draw_text(x+50,y,"Cost: "+string(cost))












