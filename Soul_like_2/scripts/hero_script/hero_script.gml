
function move(){

	dirx = 0
	diry = 0
	
	if keyboard_check(ord("D")) {
	dirx = 1
	}
	if keyboard_check(ord("Q")) {
	dirx = -1
	}
	if keyboard_check(ord("Z")) {
	diry = -1
	}
	if keyboard_check(ord("S")) {
	diry = 1
	}
	
	angle = arctan2(diry,dirx)
	
	
	if dirx != 0 {
		x += cos(angle)*sspeed
		image_xscale = dirx
	}
	y += sin(angle)*sspeed
	
	if dirx != 0 or diry != 0 {
		sprite_index = hero_run_spr
	}
	else if do_action == false {
		sprite_index = hero_idle_spr
	}
	
	dash_side = dirx
}

function dash()
{
	if keyboard_check_pressed(vk_space) {
		if dash_side {
			x += cos(angle)*sspeed_dash
			image_xscale = dash_side
		}
		y += sin(angle)*sspeed_dash

	}
}