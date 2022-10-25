/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61B41D1F
/// @DnDArgument : "code" "$(13_10)function check_collision(old_x,old_y,x,y){$(13_10)	if not place_free(old_x,y){$(13_10)			y = old_y$(13_10)		}$(13_10)		if not place_free(x,old_y){$(13_10)			x = old_x$(13_10)		}$(13_10)		if not place_free(x,y){$(13_10)			x = old_x$(13_10)			y = old_y$(13_10)		}$(13_10)	return [x,y]$(13_10)}$(13_10)$(13_10)"

function check_collision(old_x,old_y,x,y){
	if not place_free(old_x,y){
			y = old_y
		}
		if not place_free(x,old_y){
			x = old_x
		}
		if not place_free(x,y){
			x = old_x
			y = old_y
		}
	return [x,y]
}