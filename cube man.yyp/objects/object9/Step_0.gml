image_angle= point_direction(x, y, mouse_x, mouse_y);
key_A = keyboard_check(ord("A"))

if (key_A) && (cooldown < 1)
{

	instance_create_layer(x, y, "instances_bullet", grapp);
	instance_create_layer(x, y, "instances_bullet", grapp);
	instance_create_layer(x, y, "instances_bullet", grapp);
	instance_create_layer(x, y, "instances_bullet", grapp);

	cooldown =12;
	
	}
cooldown -= 1