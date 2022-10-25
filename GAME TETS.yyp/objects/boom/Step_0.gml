//VARIABLE
collspeed = speed + 2
thedistance =point_distance(x,y,mouse_x ,mouse_y)
if thedistance<15 {
	speed = 0
	exit
}
speed = 15
//movement
if place_free(x + collspeed, y + collspeed)
direction = point_direction (x, y, mouse_x, mouse_y) ;
direction = direction + random_range (-5, -5);





//ANGLE SOURIS

