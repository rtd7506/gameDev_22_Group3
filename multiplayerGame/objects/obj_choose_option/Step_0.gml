/// @description Insert description here
// You can write your code in this editor
event_inherited()

if choice{
	sprite_index = spr_bat
	//audio_play_sound(snd_recruit_wrong, 1, 0)
}else{
	sprite_index = spr_skeleton_idle
	//audio_play_sound(snd_recruit_correct, 1, 0)
}

if obj_menu.option_next{
	hiding = true
	active = false
}


if showing{
	scale += 0.1
	if scale > 1{
		showing = false
		active = true
	}
}

if hiding{
	scale -= 0.1
	if scale < 0.2{
		instance_destroy()
	}
}

image_xscale = scale*2
image_yscale = scale*2