/// @description Insert description here
// You can write your code in this editor

event_inherited()

value = 10
mspd = 0.25+obj_manager.boss_boost_speed //0.25
_health = 30+obj_manager.boss_boost_health
health_max = _health

fire_rate = 30
can_fire = true 
proj_speed = 6
can_attack = false
attack_angle = 0
moving = false

image_xscale = 3
image_yscale = 3

alarm[3] = 60
direction = 0
idle_anim = spr_boss_d_idle
move_anim = spr_boss_d_move
attack_anim = spr_boss_d_attack
hurt_anim = spr_boss_d_hurt

attempting_attack = false
attack_chance = 2
attacking = false
attack_delay = 60
attack_dir = 0
swing = 0

showText = true
alarm[6] = 120