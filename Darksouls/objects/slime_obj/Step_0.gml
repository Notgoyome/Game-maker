alive = sprite_index != slime_die


if sprite_index != slime_die {
	update_hp_bar()
	old_x = x
	old_y = y
	vec_px = global.player_x-x
	vec_py = global.player_y-y
	angle = arctan2(vec_py,vec_px)
	dx = (cos(angle)/pi)
	dy = (sin(angle)/pi)

	check_depth()

	if status != "normal" {
		if x < global.player_x {image_xscale = -abs(image_xscale)}
		else {image_xscale = abs(image_xscale)}
	}
	else {
		if x < global.player_x {image_xscale = abs(image_xscale)}
		else {image_xscale = -abs(image_xscale)}

	}


	//move_towards_point(global.player_x,global.player_y,1)

	//damaged


	if knockback >= 0 {
		x -= dx*20

		knockback -= 1
	}
	// PHASE
	if hp <= hp_max/2 and phase != 1{
		phase = 1
		ball_timer = 5
	}
	if phase == 1 and sprite_index == slime_attack {
		sprite_set_speed(slime_attack, 15, spritespeed_framespersecond);
		sprite_set_speed(slime_exhaust, 5, spritespeed_framespersecond);
	}





	//STATUS

	if sprite_index != slime_exhaust {
		if sprite_index == slime_hurt and image_index >= 4 {
			sprite_index = slime_idle
			image_index = 0
		}	
		if status != "shoot" {

			if sqrt(sqr(x-global.player_x)+sqr(y-global.player_y)) > 600 + rnd_shoot_range {
					status = "bla"
			}
			else if status != "angry" and status != "sprint" {status = "normal"}
		}

		if status == "normal"{
			if sprite_index != slime_move and sprite_index != slime_hurt {
				sprite_index = slime_move
				image_index = 0
			}
			if phase == 0 {
			x -= dx*sspeed
			y -= dy*sspeed
			}
			else if phase == 1 {
			x -= dx*sspeed*4
			y -= dy*sspeed*4
		
			}
			if sqrt(sqr(x-global.player_x)+sqr(y-global.player_y)) < 70+random(40) and global.player_sprite_index != adventurer_die {
				single_time_check = false
				status = "angry"
			}
		}

		else if status == "bla" {
			if sprite_index != slime_idle {
				sprite_index = slime_idle
				image_index = 0
			}
			if shoot_cd <= 0 {
				status = "shoot"
				n_ball = 5
				shoot_cd = 180
		
				if phase == 1 {
				n_ball = 7
				shoot_cd = 170
		
				}
			}
		
		
		}
		else if status == "shoot" {
			if n_ball > 0 {
				if ball_timer_check == false {
					n_ball = n_ball*ball_timer
					ball_timer_check = true
					if phase == 1 {
						global.slime_shoot_pattern = (global.slime_shoot_pattern+1)%2
					}
				}
			
				if n_ball%ball_timer == 0 {
					if phase == 1 {
						if global.slime_shoot_pattern == 0 {
							if irandom(1) == 1 {ball_x = room_width}
							else {ball_x = 0}
					
							if irandom(1) == 1 {ball_y = room_height}
							else {ball_y = 0}
					
							instance_create_layer(ball_x,ball_y,"instance_attack",slime_ball_obj)
						}
						else if global.slime_shoot_pattern == 1 {
							instance_create_layer(irandom(room_width),-10,"instance_attack",slime_ball_obj)
						}
					
					
	
				
					}
					else {
						instance_create_layer(x,y,"instance_attack",slime_ball_obj)
					}
				
				}
				n_ball--
			}
			else {
				ball_timer_check = false
				status = "normal"
				rnd_shoot_range = random(50)
			}
		}

		else if status == "sprint" {
			if phase == 0 {
				move_toward_player(7)
			}
			if phase == 1 {
				x += dx*sspeed*8.5
				y += dy*sspeed*8.5
			}
		if sqrt(sqr(x-global.player_x)+sqr(y-global.player_y)*50) < 120 {
			status = "angry"
			single_time_check = false
		
		}
		//pin
		}
		else if status ==  "angry" {
			if sprite_index != slime_attack {
				sprite_index = slime_attack
				image_index = 0
			}
			else if image_index >= 6 
				{

				if n_attack > 0 {
					status = "sprint"	
					n_attack -= 1
					sprite_index = slime_move
					image_index = 0
					single_time_check = false
				}
				
				else {
					status = "normal"
					if will_exhaust == true {
						status = "exhaust"
						sprite_index = slime_exhaust
						image_index = 0
					}
				}
				instance_destroy(slime_attack1_obj)
			}
			else if image_index >= 4 {
					if single_time_check == false{

						instance_create_layer(x-sprite_width/5,y+sprite_height/10,"instance_attack",slime_attack1_obj)
						single_time_check = true
					}
				
				}


		}
	}
	// exhaust status 
	if status == "exhaust" and image_index >= 16 
	{
		image_index = 0
		sprite_index = slime_idle
		status = "normal"
		will_exhaust = false
	
		if (random(10)>= 3)
		{
			status = "shoot"
			n_ball = 8
			shoot_cd = 230
		}
	}



	//movement 







	x = check_collision(old_x,old_y,x,y)[0]
	y = check_collision(old_x,old_y,x,y)[1]



	if (x == old_x or y == old_y) and sprite_index == slime_move and phase == 1 
	{
		ready_to_sprint += 1
	
		if ready_to_sprint >= 10 {
			status = "sprint"
			n_attack = 3 + irandom(2)
			will_exhaust = true
			ready_to_sprint = 0
		}
	}
}

//timer
if hp <= 0 {
	if sprite_index != slime_die { //se fait une fois
		delete_hp_bar()
		sprite_index = slime_die
		image_index = 0
		time_before_portal = 35

	}
	else if image_index > 3 {
		image_index = 3
		if time_before_portal <= 0 {
			if not instance_exists(portal_obj){ 
				instance_create_layer(x,y,"actor",portal_obj) 
				instance_create_layer(x,y,"GUI",black_screen_obj) 
				
				}
		}
		else {
			time_before_portal -= 1
		}
	}
	
	}

	

if shoot_cd > 0 {
	shoot_cd --
}

if exhaust_cd > 0 {
	exhaust_cd --
}
