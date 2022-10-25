//update gui

update_hp_bar(hp,hp_max,alive)
//update


old_hp = hp 
old_x = x
old_y = y
vec_px = global.player_x-x
vec_py = global.player_y-y
angle = arctan2(vec_py,vec_px)
dx = (cos(angle)/pi)
dy = (sin(angle)/pi)
min_samurai_attack0_speed = sprite_get_speed(samurai_attack)+4+8*(1-hp/hp_max)
priority_movement = false

if instance_exists(samurai_attack_hitbox) {sspeed = var_attack.sspeed}

if knockback <= 0 {
move_toward_player(7)
}
update_shadow(x,y)
update_knockback()

if lock_x_scale == false{
	look_at_player()
}

check_depth()

//sprite change


// méchanic

//augmente l'attack speed

if will_dash == true {
	sspeed = 15
	sprite_set_speed(samurai_attack,50,spritespeed_framespersecond)
}





// sprite once 
distance_before_hit = 120



if sqrt(sqr(x-global.player_x)+sqr(y-global.player_y)) <= distance_before_hit and knockback <= 0 {
	if sprite_index != samurai_attack {
			sprite_index = samurai_attack
			image_index = 0
			lock_x_scale = true
			will_hit = true
			hp_befort_hit = hp
			
		}

}

if sprite_index == samurai_attack and image_index >= 9 {
	sprite_index = samurai_walk
	image_index = 0
	lock_x_scale = false
	if hp_befort_hit != hp {
			if irandom(5) >= 4 {
				will_dash = true
				create_knockback(50)
			}
	}
}
else if sprite_index == samurai_attack {
	if image_index > 8 {
		if will_dash {
			sspeed = sspeed_ini
			sprite_set_speed(samurai_attack,samurai_attack0_speed,spritespeed_framespersecond)
			will_dash = false
		}
		if global.player_sprite_index != adventurer_smrslt_00 and sprite_get_speed(samurai_attack) <= max_samurai_attack0_speed and instance_exists(samurai_attack_obj)
		{
			sprite_add_speed(samurai_attack,2)
			sspeed += 0.5
			

		}
		instance_destroy(samurai_attack_obj)

	}
	if image_index >= 7 {
		if will_hit == true {
			
			var_attack = instance_create_layer(x+sprite_width/5.4,y,"instance_attack",samurai_attack_obj)
			var_attack.max_samurai_attack0_speed = max_samurai_attack0_speed
				var_attack.sspeed = sspeed
			will_hit = false
		}
	}

}


if sprite_index != samurai_attack {
	
	
	
	if old_x != x or old_y != y {
		if sprite_index != samurai_walk and sprite_index != samurai_jump {
			sprite_index = samurai_walk
			image_index = 0
		}
	}
	else if sprite_index != samurai_idle and sprite_index != samurai_jump
	{
			sprite_index = samurai_idle
			//image_index = 0

	}
}
if sprite_index == samurai_attack {
		x = old_x
		y = old_y

	}
if sprite_index == samurai_jump and knockback <= 0 {
	sprite_index = samurai_walk
	image_index = 0
}

if knockback > 0 and sprite_index == samurai_walk and hp_befort_hit != hp {
	sprite_index = samurai_jump
	//image_index = 0
	image_xscale = -image_xscale

}

