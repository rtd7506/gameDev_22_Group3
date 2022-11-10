/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(228,166,114))
draw_rectangle(player_center-320,55,player_center+270,720,false)
draw_set_color(make_color_rgb(234,212,170))
draw_rectangle(player_center-300,75,player_center+250,700,false)

draw_set_color(c_black)
draw_set_font(title_font)
draw_set_halign(fa_center);
//draw_text_ext(p.x,p.y-96,"Pick up cash drops to collect money",25,200)
draw_text(player_center,100,"HERO")
draw_set_font(main_font)
draw_set_halign(fa_left);
draw_text_ext(player_center-210,175,"Goal: ",40,500)
draw_text_ext(player_center-110,175,"Make it through 5 stages of a dungeon alive",40,375)
draw_text_ext(player_center-275,325,"Controls: ",40,500)
draw_text_ext(player_center-110,325,"# WASD to Move",40,375)
draw_text_ext(player_center-110,370,"# SPACE to Attack",40,375)
draw_text_ext(player_center-110,415,"# Arrow keys to Aim",40,375)
draw_text_ext(player_center-110,460,"# Q to Switch Weapons",40,375)
//draw_text_ext(player_center,175,"Goal: Make it through 5 stages of a dungeon alive",40,500)

draw_set_color(make_color_rgb(228,166,114))
draw_rectangle(manager_center-320,55,manager_center+270,720,false)
draw_set_color(make_color_rgb(234,212,170))
draw_rectangle(manager_center-300,75,manager_center+250,700,false)
draw_set_color(c_black)
draw_set_font(title_font)
draw_set_halign(fa_center);
draw_text(manager_center,100,"MANAGER")
draw_set_font(main_font)
draw_set_halign(fa_left);
draw_text_ext(manager_center-210,175,"Goal: ",40,500)
draw_text_ext(manager_center-110,175,"Kill the HERO before they can escape",40,375)
draw_text_ext(manager_center-275,280,"Controls: ",40,500)
draw_text_ext(manager_center-110,280,"# Move MOUSE to move",40,375)
draw_text_ext(manager_center-110,325,"# Click and drag enemies to purchase them",40,375)
draw_text_ext(manager_center-110,460,"# Click on the MONEY tab to fund your army",40,375)
