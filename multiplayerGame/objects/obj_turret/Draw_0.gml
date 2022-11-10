/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_turret,0,x,y,1,1,image_angle,charge_stages[charge_count],1)

draw_healthbar(x-24,y-48,x+24,y-40,_health*(100/health_max),c_black,c_red,c_green,0,true,true)


if !obj_manager.hasTurreted{
	draw_set_color(c_yellow)
	draw_set_font(main_font)
	draw_set_halign(fa_center);
	draw_text(x,y-80,"Click and Drag to Aim")
	draw_set_halign(fa_left);
	if wrangled{
		obj_manager.hasTurreted = true
	}
}