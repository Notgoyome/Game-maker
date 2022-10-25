//VARIABLE
move_speed = 3.5 ;
collspeed = move_speed + 20 ;
move_run = 5;
speed = spdbounce;
collspeed = move_speed + 1 ;

///MOUVEMENT
if (spdbounce > 0)
{
	spdbounce = spdbounce - 1;
}
	
if (keyboard_check(vk_shift)) move_speed = move_run;

///if (keyboard_check(vk_right)) x = x + move_speed ;
///if (keyboard_check(vk_left)) x = x - move_speed ;
///if (keyboard_check(vk_up)) y = y - move_speed ;
///if (keyboard_check(vk_down)) y = y + move_speed ;

///letter mouvment
//movement
if (keyboard_check(ord("D"))) && place_free(x + collspeed, y) {
	x += move_speed ; 
}
if (keyboard_check(ord("Q"))) && place_free(x - collspeed, y) {
	x -= move_speed ;
}
if (keyboard_check(ord("S"))) && place_free(x, y + collspeed ) {
	y += move_speed ;
}
if (keyboard_check(ord("Z"))) && place_free(x , y - collspeed) {
	y -= move_speed ;
}





//ANGLE SOURIS
image_angle= point_direction(x, y, mouse_x, mouse_y);

//SHOOT
if (mouse_check_button(mb_right)) && (cooldown < 1)



{ instance_create_layer(x, y, layer, Balle_sn);
	cooldown = 60;
}
if (mouse_check_button(mb_left)) && (cooldown < 1)
{

	instance_create_layer(x, y, "layerbullet", Balle);

	cooldown =12;
	
	}
///if (keyboard_check(vk_tab))  && (cooldown < 1);
//if keyboard_check(ord("A")) && (Scooldown < 1)
//{
//	 instance_create_layer(x, y, "layerbullet", LAZER_GROHK);	 
//	 Scooldown = 0.25;
//}

if keyboard_check(ord("A")) && Scooldown < 1

{
	if (instance_exists(boom))
	{
		instance_destroy(boom)
	}
	else
	 instance_create_layer(x, y, "layerbullet", boom);	 
	 Scooldown = 40;
}
Scooldown -= 1;
cooldown = cooldown - 1;
//Vie
if (hp) <= 0
{
	//game_restart();
}
// parade
if (keyboard_check(ord("E")))
{
	block = 8;
}
block = block - 1;
if (keyboard_check(ord("F"))) 
{
	sprite_index=(sprite23)
	push = 4 
	
}
push = push - 1;


