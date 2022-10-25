old_x = x
old_y = y
global.player_x = x
global.player_y = y
global.player_depth = depth
self.visible = global.player_visible

//player_hp -= 100

//OMBRE
if self.visible {
	if not instance_exists(player_shadow) {
		create_shadow(x,y)
	}
	else {update_shadow(x,y)}
}



 if sprite_index != adventurer_die and self.visible == true
	{
	if sprite_index != adventurer_smrslt_00 and sprite_index != adventurer_hurt_00 {
		dash_side()
		move()
		attack()
		
		if dirx != 0 or diry != 0{
			old_dirx = dirx
			old_diry = diry
		}

	
		if (keyboard_check(vk_space)) and player_dash_cd <= 0 and (old_dirx != 0 or old_diry != 0){
			player_attack_index = 0
			image_index = 0
			sprite_index = adventurer_smrslt_00;
			player_is_dash = true
			player_dash_distance = 40*player_speed
			player_dash_cd = 50
			global.attack_y = 0
			global.attack_x = 0

		}
	}
	//DASH
	if player_is_dash == true{
		
		check_move(old_dirx*2,old_diry*2,player_speed)
		
		player_dash_distance -= sqrt(sqr(old_dirx*player_speed*2)+sqr(old_diry*player_speed*2))
	

	
		if player_dash_distance <= 0{
		player_is_dash = false
		}

	}

	if old_x == x and old_y == y {
		is_action = false
		for (var i = 0; i <= ds_list_size(player_attack_list); i+=1) {
			if sprite_index == ds_list_find_value(player_attack_list,i){
				is_action = true

			}
		}
		if sprite_index == adventurer_hurt_00 {is_action = true}
		if is_action == false{
			sprite_index = adventurer_idle_00;
	
		}
	}


	//changer stp
	if player_dash_cd > 0{
		player_dash_cd -= 1
	}
	if player_attack_reset > 0 {
		player_attack_reset -= 1
	}
	else{player_attack_index = 0}

	//hurt sprite

	if sprite_index == adventurer_hurt_00 and image_index > 3 {
	
		sprite_index = adventurer_idle_00
		image_index = 0

	}

	//COLLISION

	x = check_collision(old_x,old_y,x,y)[0]
	y = check_collision(old_x,old_y,x,y)[1]
	
	global.player_x = x
	global.player_y = y


}


//die
if player_hp <= 0 and sprite_index != adventurer_die {
	sprite_index = adventurer_die
	image_index = 0
}

if sprite_index == adventurer_die and image_index >= 25 {
	image_index = 24
}
if player_hp <= 0 {
	global.alpha_die = image_index/(24/2)
}

global.player_sprite_index = sprite_index 