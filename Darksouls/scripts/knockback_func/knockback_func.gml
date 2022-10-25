
function create_knockback(n)
{
	vec_px = global.player_x-x
	vec_py = global.player_y-y
	angle = arctan2(vec_py,vec_px)
	dx = (cos(angle)/pi)
	dy = (sin(angle)/pi)
	knockback = n
}

function update_knockback() 
{
	if knockback > 0 
	{
		x -= dx*20
		knockback = knockback - 1
	}
	
}