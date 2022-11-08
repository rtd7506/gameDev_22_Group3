/// @description new choices
// You can write your code in this editor



var rx = irandom_range(0,2)
var ry = irandom_range(0,2)
for (var i = 0; i<3;i++){  //Create food items for sc3
	for (var j = 0; j<3;j++){ 
		var option = instance_create_depth(857+96*i,316+96*j,0,obj_choose_option)
		if i == rx && j == ry{
			option.choice = true
		}else{
			option.choice = false
		}
	}
}

