/// @description Insert description here
// You can write your code in this editor

if !place_meeting(x,y,obj_document){
	instance_destroy()
}else{
	if doc.leaving{
		x+=10
	}
}

if x > room_width{
	instance_destroy()
}

