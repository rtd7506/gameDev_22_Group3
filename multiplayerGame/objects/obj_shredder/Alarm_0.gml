/// @description Insert description here
// You can write your code in this editor

event_inherited()

count = 0
next = false
for (var i = 0; i<3;i++){  //Create food items for sc2
	instance_create_depth(880-8*i,304+8*i,0,obj_evidence)
}
