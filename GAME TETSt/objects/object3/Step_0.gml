spdbounceE = 15
if (spdbounceE > 0)
{
    speed = spdbounceE;
	spdbounceE = spdbounceE - 1;
}

if (instance_exists(object0))
{
    move_towards_point(object0.x, object0.y, spd);
}

if (hp <= 0) 
{
instance_destroy();
}

//image_angle = direction;
