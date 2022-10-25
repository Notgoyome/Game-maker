Coll += 1
if A = 0 {
    instance_create_layer(0+x, -30+y, "instances_3", Epress);
	A = 1

}


var l7FF76ADA_0;
l7FF76ADA_0 = (keyboard_check(ord("E")));

if (l7FF76ADA_0) && Spritechest = 0 {
    sprite_index=chest2;
	alarm[0] = 8;
    }
else {
	if (l7FF76ADA_0) && Spritechest = 1 {
    sprite_index=sprite20;
	alarm[1] = 8;
	}
}