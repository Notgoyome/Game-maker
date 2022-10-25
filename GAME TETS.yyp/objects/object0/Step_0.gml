//VARIABLE
move_speed = 3.5 ;
collspeed = move_speed + 20 ;
move_run = 5;
speed = spdbounce;
collspeed = move_speed + 1 ;

//MOUVEMENT
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

if (keyboard_check(ord("D"))) 
{
sprite_index=sprite21;
    if(place_free(x + collspeed, y)) {
    x += move_speed; 
}
}


	
if (keyboard_check(ord("Q"))){
sprite_index=hero_left;
    if place_free(x - collspeed, y) {
	x -= move_speed
	}
}
if (keyboard_check(ord("S"))){
sprite_index=hero_down;
    if place_free(x, y + collspeed ) {
	y += move_speed
	}
}

if (keyboard_check(ord("Z"))){
sprite_index=hero_up;
    if place_free(x , y - collspeed) {
	y -= move_speed
	}
}
if tp = 1
   {
instance_create_layer(0+realdoor_x, +10+realdoor_y, "instances_4", object0);
tp = 0
   }
