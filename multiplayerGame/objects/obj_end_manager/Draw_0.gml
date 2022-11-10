/// @description Insert description here
// You can write your code in this editor
/*
draw_set_font(Store_Font)
draw_set_color(c_white)
draw_text(550,375,"press SPACE to restart")
*/
/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(228,166,114))
draw_rectangle(player_center-270,55,player_center+270,720,false)
draw_set_color(make_color_rgb(234,212,170))
draw_rectangle(player_center-250,75,player_center+250,700,false)

draw_set_color(c_black)
draw_set_font(title_font)
draw_set_halign(fa_center);
//draw_text_ext(p.x,p.y-96,"Pick up cash drops to collect money",25,200)
draw_text(player_center,100,"HERO")
draw_text_ext(player_center+100,260,string(obj_stat_manager.p_total),40,500)
draw_set_font(main_font)
draw_text_ext(player_center+100,200,"TOTAL POINTS:",40,500)
draw_set_halign(fa_left);

draw_text_ext(player_center-210,360,"Enemies Killed: "+string(obj_stat_manager.p_enemiesKilled),40,500)
draw_text_ext(player_center-210,400,"Damage Dealt: "+string(obj_stat_manager.p_damageDealt),40,500)
draw_text_ext(player_center-210,440,"Money Collected: "+string(obj_stat_manager.p_moneyCollected),40,500)
draw_text_ext(player_center-210,480,"End Lives: "+string(obj_stat_manager.p_endLives),40,500)
draw_text_ext(player_center-210,520,"Stages Reached: "+string(obj_stat_manager.p_stagesReached),40,500)
draw_text_ext(player_center-210,560,"Victory Bonus: "+string(obj_stat_manager.p_victoryBonus),40,500)

draw_text_ext(player_center+75,360,"x 10  = "+string(obj_stat_manager.p_enemiesKilled*10),40,500)
draw_text_ext(player_center+75,400,"x 10  = "+string(obj_stat_manager.p_damageDealt*10),40,500)
draw_text_ext(player_center+75,440,"x 1   = "+string(obj_stat_manager.p_moneyCollected),40,500)
draw_text_ext(player_center+75,480,"x 10  = "+string(obj_stat_manager.p_endLives*10),40,500)
draw_text_ext(player_center+75,520,"x 10  = "+string(obj_stat_manager.p_stagesReached*10),40,500)
draw_text_ext(player_center+75,560,"x 100 = "+string(obj_stat_manager.p_victoryBonus*100),40,500)
/*
draw_text_ext(player_center-110,175,"Make it through 5 stages of a dungeon alive",40,375)
draw_text_ext(player_center-275,325,"Controls: ",40,500)
draw_text_ext(player_center-110,325,"# WASD to Move",40,375)
draw_text_ext(player_center-110,370,"# SPACE to Attack",40,375)
draw_text_ext(player_center-110,415,"# Arrow keys to Aim",40,375)
draw_text_ext(player_center-110,460,"# Q to Switch Weapons",40,375)
//draw_text_ext(player_center,175,"Goal: Make it through 5 stages of a dungeon alive",40,500)
*/

draw_set_color(make_color_rgb(228,166,114))
draw_rectangle(manager_center-270,55,manager_center+270,720,false)
draw_set_color(make_color_rgb(234,212,170))
draw_rectangle(manager_center-250,75,manager_center+250,700,false)
draw_set_color(c_black)
draw_set_font(title_font)
draw_set_halign(fa_center);
draw_text(manager_center,100,"MANAGER")
draw_text_ext(manager_center+100,260,string(obj_stat_manager.m_total),40,500)
draw_set_font(main_font)
draw_text_ext(manager_center+100,200,"TOTAL POINTS:",40,500)
draw_set_halign(fa_left);

draw_text_ext(manager_center-210,360,"Enemies Spawned: "+string(obj_stat_manager.m_enemiesSpawned),40,500)
draw_text_ext(manager_center-210,400,"Damage Dealt: "+string(obj_stat_manager.m_damageDealt),40,500)
draw_text_ext(manager_center-210,440,"Money Collected: "+string(obj_stat_manager.m_moneyCollected),40,500)
draw_text_ext(manager_center-210,480,"Tasks Completed: "+string(obj_stat_manager.m_tasksCompleted),40,500)
draw_text_ext(manager_center-210,520,"Boss Upgrades: "+string(obj_stat_manager.m_bossUpgrades),40,500)
draw_text_ext(manager_center-210,560,"Victory Bonus: "+string(obj_stat_manager.m_victoryBonus),40,500)

draw_text_ext(manager_center+75,360,"x 5  = "+string(obj_stat_manager.m_enemiesSpawned*5),40,500)
draw_text_ext(manager_center+75,400,"x 50  = "+string(obj_stat_manager.m_damageDealt*50),40,500)
draw_text_ext(manager_center+75,440,"x 1  = "+string(obj_stat_manager.m_moneyCollected),40,500)
draw_text_ext(manager_center+75,480,"x 10  = "+string(obj_stat_manager.m_tasksCompleted*10),40,500)
draw_text_ext(manager_center+75,520,"x 5  = "+string(obj_stat_manager.m_bossUpgrades*10),40,500)
draw_text_ext(manager_center+75,560,"x 100 = "+string(obj_stat_manager.m_victoryBonus*100),40,500)
/*
draw_text_ext(manager_center-210,175,"Goal: ",40,500)
draw_text_ext(manager_center-110,175,"Kill the HERO before they can escape",40,375)
draw_text_ext(manager_center-275,280,"Controls: ",40,500)
draw_text_ext(manager_center-110,280,"# Move MOUSE to move",40,375)
draw_text_ext(manager_center-110,325,"# Click and drag enemies to purchase them",40,375)
draw_text_ext(manager_center-110,460,"# Click on the MONEY tab to fund your army",40,375)
*/


