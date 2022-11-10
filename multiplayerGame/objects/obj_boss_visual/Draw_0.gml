/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_font(main_font)
draw_set_color(c_black)
draw_text(x+60,y-50,"Health: "+string(30+obj_manager.boss_boost_health))
draw_text(x+60,y-20,"Damage: "+string(2+obj_manager.boss_boost_damage))
draw_text(x+60,y+10,"Speed: "+string((0.25+obj_manager.boss_boost_speed)*4)) //0.25
