
instance_destroy(attack_obj)
hp -= global.player_damage

if status != "sprint" and status != "angry" {
	knockback = 5
	if status != "exhaust" {
		sprite_index = slime_hurt
		image_index = 0
		single_time_check = false
	}
}

if status == "normal" {
	status = "sprint"
	n_attack = 2
	single_time_check = false
	will_exhaust = true
	if phase == 1 {
		n_attack = 4
	
	}
	
	
	}
	
