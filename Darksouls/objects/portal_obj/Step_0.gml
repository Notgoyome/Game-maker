check_depth()

if click_check == true {
	global.alpha_die = image_index/25
}

if image_index >= 25 and click_check == true {
	room_goto_next()
	global.player_visible = true
}