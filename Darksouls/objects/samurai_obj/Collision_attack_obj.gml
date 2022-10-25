if sprite_index != samurai_jump {
	hp -= 50
	create_knockback(3)

	//reset l'attack speed si il se fait frapper
	if sprite_get_speed(samurai_attack) > min_samurai_attack0_speed {
		sprite_set_speed(samurai_attack,min_samurai_attack0_speed,spritespeed_framespersecond)
	}
	sspeed = sspeed_ini
	//if samurai_attack0_speed >= min_samurai_attack0_speed {
	//	sprite_set_speed(samurai_attack,min_samurai_attack0_speed,spritespeed_framespersecond)
	//}
	instance_destroy(attack_obj)
}