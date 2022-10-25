//debug

//player angle


//keyboard
if dash_frame <= 0 {
	if mouse_x > x {
		xscale = 1
	}
	else if ( attack_frame <= 0) xscale = -1
	if (keyboard_check(ord("Z"))){

		last_pos_wanted = "y";
		dash_speed = -abs(dash_speed);
	
		}

		if (keyboard_check(ord("S"))){

		last_pos_wanted = "y";
		dash_speed = abs(dash_speed);
		}
		if (keyboard_check(ord("D"))){

		last_pos_wanted = "x";
		dash_speed = abs(dash_speed)

		}
		if (keyboard_check(ord("Q"))){

		last_pos_wanted = "x";
		dash_speed = -abs(dash_speed);
		}
}
if dash_frame <= 0 {

	
	if (keyboard_check(ord("Z"))){
	y -= speedd;
	last_pos_wanted = "y";
	dash_speed = -abs(dash_speed);
	
	}
	if (keyboard_check(ord("S"))){
	y += speedd;
	last_pos_wanted = "y";
	dash_speed = abs(dash_speed);
	}
	if (keyboard_check(ord("D"))){
	x += speedd;
	last_pos_wanted = "x";
	dash_speed = abs(dash_speed)
	}
	if (keyboard_check(ord("Q"))){
	x -= speedd;
	last_pos_wanted = "x";
	dash_speed = -abs(dash_speed);
	}
	

	if mouse_check_button(mb_left) && attack_cd <= 0
	{
	 check = true
	 attack_frame = 20 
	 attack_cd = 10 + attack_frame
	 sprite = Sprite4
	}	
}

if (keyboard_check(vk_space)) and can_dash == true {
	attack_frame = 0
	dash_cd = dash_frame + 40
	dash_frame = 20
	can_dash = false
}


//attack 
if attack_cd > 0 {
attack_cd -=1
}
if attack_frame > 0 {
speedd = 1
attack_frame -= 1
}
else {
speedd = ini_speedd
sprite = Sprite1
}


// dash
if dash_cd > 0 {
dash_cd -= 1
}

if dash_frame > 0 {
	sprite = Sprite2
	dash_frame -= 1;
	if (last_pos_wanted == "x") x += dash_speed;
	else y += dash_speed;
}
else { 
	if dash_cd == 0 {
	can_dash = true
	}
}

//end
