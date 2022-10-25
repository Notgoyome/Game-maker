hp = 200;
spd = 1.5;
Cooldownb = 0
push = 0
ospdbounce = 10
speed = ospdbounce;
collspeed = spd + 2
if (instance_exists(object0)) && place_free(x + collspeed, y)
{
    move_towards_point(object0.x,object0.y,spd)
}
//image_angle = direction;

if (hp <= 0) 
instance_destroy();


