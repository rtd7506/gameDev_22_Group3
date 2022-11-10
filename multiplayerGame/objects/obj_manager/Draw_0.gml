/// @description Insert description here
// You can write your code in this editor

draw_set_font(ui_font)
draw_set_color(c_red)
draw_text(room_width-280,25,"Manager Money: "+ string(MONEY))

draw_set_color(c_lime)
draw_text(70,25,"Player Money: "+ string(PLAYER_MONEY))

if showStage{
	draw_set_color(c_white)
	draw_set_font(title_font)
	draw_set_halign(fa_center);
	draw_text(384,352,"Stage "+string(stage))
	draw_set_halign(fa_left);
}