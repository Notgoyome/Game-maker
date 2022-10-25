function check_move(dirx,diry,speeed){
	if not place_meeting(x+dirx*speeed,y,collision_obj){
		x += dirx*speeed
	}
	
	if not place_meeting(x,y+diry*speeed,collision_obj){
		y += diry*speeed
	}

		
}



function move(){
	
	dirx = 0
	diry = 0
	
	if (keyboard_check(ord("D")))
	{
		dirx = 1
	}
	if (keyboard_check(ord("Q")))
	{	dirx = -1

	}

	if (keyboard_check(ord("S")))
	{
		diry = 1
	}

	if (keyboard_check(ord("Z")))
	{
		diry = -1
	}
	
	angle = arctan2(diry,dirx)
	if dirx != 0 {
		dirx = cos(angle)
	}
		
	diry = sin(angle)
	
	if not player_is_attack{
		
		sprite_index = adventurer_run_00;
		
		check_move(dirx,diry,player_speed)
		
	}
}

////////////////////////////////////////////////

//function

function dash_side(){
	if (keyboard_check(ord("D"))){
		player_dash_side = 1
		image_xscale= player_xscale
		}
	if (keyboard_check(ord("Q"))){
		player_dash_side = -1 
		image_xscale= -player_xscale
		}
}


//ATTACK 

function attack(){
			//first attack pattern
		if not player_is_attack{
			instance_destroy(attack_obj)

		} 
		else {
		}
		

		if sprite_index == adventurer_attack {
		 
			if image_index >= 5 {

				sprite_index = adventurer_idle_00 
			}
			if image_index >= 3 and single_time_check == false{
				global.player_damage = player_init_damage
				instance_create_layer(x+sprite_width/5,y,"instance_attack",attack_obj)
				single_time_check = true
			}
		}
			//second attack pattern
		else if sprite_index == adventurer_attack_2 {
		 
			if image_index >= 6 {

				sprite_index = adventurer_idle_00 
			}
			if image_index >= 4 and single_time_check == false{
				global.player_damage = player_init_damage*1.5
				instance_create_layer(x+sprite_width/5,y,"instance_attack",attack_obj)
				single_time_check = true
			}

		}
		else if sprite_index == adventurer_attack_3 {
		 
			if image_index >= 6 {

				sprite_index = adventurer_idle_00 
			}
			if image_index >= 3 and single_time_check == false{
				global.player_damage = player_init_damage*2
				instance_create_layer(x+sprite_width/5,y,"instance_attack",attack_obj)

				single_time_check = true
			}

		}
		
		
		else {
			player_damage = false
			player_is_attack = false
			
	
		}
	
	if (mouse_check_button_pressed(mb_left))// and sprite_index != adventurer_attack
	{	
	
		if player_is_attack == false {
			global.player_damage = player_init_damage
			sprite_index = ds_list_find_value(player_attack_list,player_attack_index)
			player_attack_index = (player_attack_index+1)%ds_list_size(player_attack_list)
			
			player_is_attack = true
			single_time_check = false
			
			image_index = 0
			player_attack_reset = 55
			
			
	

		}
	}
	
	
}