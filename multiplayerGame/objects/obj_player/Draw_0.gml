/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_healthbar(x-32,y-54,x+32,y-40,_health*100/health_max,c_black,c_red,c_green,0,true,true)

draw_set_font(main_font)

if show_switch_text{
	draw_set_color(c_white)
	draw_set_halign(fa_center);
	draw_text(x-25,y-75,curr_weapon)
	draw_set_halign(fa_left);
}
draw_set_color(c_white)
draw_text(70,50,"Lives: "+string(_lives))
//draw_circle(x,y+4,24,false)

if showSwitch{
	draw_set_halign(fa_center);
	draw_text(x,y-96,"Press Q to switch weapons")
	draw_set_halign(fa_left);
	if keyboard_check_pressed(ord("Q")){
		showSwitch = false
		hasSwitched = true
	}
}

if tutorial_progress < array_length(tutorial_text){
	draw_set_halign(fa_center);
	draw_text(x,y-96,tutorial_text[tutorial_progress])
	draw_set_halign(fa_left);
	if tutorial_progress == 0{
		if hasMoved{
			tutorial_progress+=1
		}
	}else if tutorial_progress == 1{
		if hasAttacked{
			tutorial_progress+=1
		}
	}else if tutorial_progress == 2{
		if hasAimed{
			tutorial_progress+=1
		}
	}else if tutorial_progress == 3{
		if hasGated{
			tutorial_progress+=1
		}
	}
}
if tutorial_progress == 4 && instance_exists(obj_money){
	var p = instance_nearest(x,y,obj_money)
	draw_set_halign(fa_center);
	draw_text_ext(p.x,p.y-96,"Pick up cash drops to collect money",25,200)
	draw_set_halign(fa_left);
	if hasCashed{
			tutorial_progress+=1
		}
}
