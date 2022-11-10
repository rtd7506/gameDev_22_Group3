/// @description Insert description here
// You can write your code in this editor

draw_self()
if obj_manager.stage != 5{//.boss
	draw_healthbar(x-24,y-68,x+24,y-60,_health*100/health_max,c_black,c_red,c_green,0,true,true)
}


