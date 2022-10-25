key_shift = keyboard_check(vk_shift)
key_right = keyboard_check(ord("D"))
key_left = -keyboard_check(ord("Q"))
key_down = keyboard_check(ord("S"))
key_jump = keyboard_check(vk_space)
key_control = keyboard_check(vk_lcontrol)
mouse_right = mouse_check_button(mb_right)
mouse_left = -mouse_check_button(mb_left)

//if (key_shift) move_speed = move_run;
//var move = mouse_left + mouse_right
move = key_left + key_right;

hsp = move * move_speed;
//gravity 
if (vsp < 3000) vsp += grav;
//WALL CLIMB
if (place_meeting (x,y-1, object1)) && mouse_check_button(mb_left) && wall2climb >= 25
{
	vsp = key_jump * -jumpspeed
	wall2climb -= 2.5
}
if (place_meeting (x,y+20, object1)) 
{
}
else if (key_down)
{
y = y+20
}

if (place_meeting (x,y+1, object1)) or (place_meeting (x,y+1, object5))
{
	vsp = key_jump * -jumpspeed
	if wallclimb < 100
	wallclimb += 25
}
if (place_meeting (x+1,y, object1)) && mouse_right && wallclimb >= 25 or (place_meeting (x-1,y, object1)) && mouse_right && wallclimb >= 25
{
	vsp = mouse_right * -jumpspeed
	wallclimb -= 2.5
	if wall2climb < 100
	wall2climb += 25
}

//horizontal
if (place_meeting (x+hsp,y,object1))
{
	while(!place_meeting(x+sign(hsp),y,object1))
	{
	   x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting (x+hsp,y,object5))
{
	while(!place_meeting(x+sign(hsp),y,object5))
	{
	   x += sign(hsp);
	}
	hsp = 0;
}
//vertical
if (place_meeting (x,y+vsp,object1))
{
	while(!place_meeting(x,y+sign(vsp),object1))
	{
    y += sign(vsp);
    }
	vsp = 0;
}
if (place_meeting (x,y+vsp,object5))
{
	while(!place_meeting(x,y+sign(vsp),object5))
	{
    y += sign(vsp);
    }
	vsp = 0;
}
x += hsp;
y += vsp;

if (place_meeting (x,y-1, enemy)) 
{
room_restart()
}

if (place_meeting (x,y+1, enemy)) 
{
room_restart()
}
if (place_meeting (x+1,y, enemy)) 
{
room_restart()
}
if (place_meeting (x-1,y, enemy)) 
{
room_restart()
}
//
if (place_meeting (x,y-1, door)) 
{
room_goto_next();
}

if (place_meeting (x,y+1, door)) 
{
room_goto_next();
}
if (place_meeting (x+1,y, door)) 
{
room_goto_next();
}
if (place_meeting (x-1,y, door)) 
{
room_goto_next();
}

//movement

//if (keyboard_check(ord("D"))) && place_free(x + collspeed, y) {
//	x += move_speed ; 
//
//if (keyboard_check(ord("Q"))) && place_free(x - collspeed, y) {
//	x -= move_speed ;
//}


//jump




