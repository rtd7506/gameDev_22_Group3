/// @description random movement
// You can write your code in this editor

var r = irandom_range(0,5)
if r == 0{
	hspd = mspd
	vspd = 0
	moving = true
	/*
	idle_anim = spr_boss_r_idle
	move_anim = spr_boss_r_move
	attack_anim = spr_boss_r_attack
	hurt_anim = spr_boss_r_hurt
	*/
}else if r==1{
	hspd = -mspd
	vspd = 0
	moving = true
	/*
	idle_anim = spr_boss_l_idle
	move_anim = spr_boss_l_move
	attack_anim = spr_boss_l_attack
	hurt_anim = spr_boss_l_hurt
	*/
}else if r==2{
	hspd = 0
	vspd = mspd
	moving = true
	/*
	idle_anim = spr_boss_d_idle
	move_anim = spr_boss_d_move
	attack_anim = spr_boss_d_attack
	hurt_anim = spr_boss_d_hurt
	*/
}else if r==3{
	hspd = 0
	vspd = -mspd
	moving = true
	
}else{
	moving = false
}

alarm[3] = 60


