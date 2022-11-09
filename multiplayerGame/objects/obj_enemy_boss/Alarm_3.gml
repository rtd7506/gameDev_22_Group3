/// @description random movement
// You can write your code in this editor

var r = irandom_range(0,5)
if r == 0{
	hspd = mspd
	vspd = 0
	moving = true
}else if r==1{
	hspd = -mspd
	vspd = 0
	moving = true
}else if r==2{
	hspd = 0
	vspd = mspd
	moving = true
}else if r==3{
	hspd = 0
	vspd = -mspd
	moving = true
}else{
	moving = false
}

alarm[3] = 60


