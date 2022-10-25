function look_at_player()
{
	if x < global.player_x {image_xscale = abs(image_xscale)}
	else {image_xscale = -abs(image_xscale)}
	abc = 80
}

function check_depth(){
	if y > global.player_y {depth = global.player_depth-1}
	depth = global.player_depth +1 
}

function move_toward_player(n) {
	if abs(global.player_x - x ) > abs(dx*sspeed*n+1 ) or abs(global.player_y - y ) > abs(dy*sspeed*n+1 )
		x += dx*sspeed*n
		y += dy*sspeed*n

}

