if global.player_sprite_index != adventurer_smrslt_00 {
}
else {
	//attack speed augmente si il rate son coup
	if sprite_get_speed(samurai_attack) <= max_samurai_attack0_speed {
		sprite_add_speed(samurai_attack,2)	
		sspeed += 0.5
	}
}
instance_destroy(self)
