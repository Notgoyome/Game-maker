if(global.player_sprite_index == adventurer_die)
{
	draw_set_colour($FF000000 & $ffffff);
	var l0A79693E_0=($FF000000 >> 24);
	draw_set_alpha(l0A79693E_0 / $ff);

	draw_set_alpha(global.alpha_die);

	draw_rectangle(0, 0, room_width, room_height, 0);
}