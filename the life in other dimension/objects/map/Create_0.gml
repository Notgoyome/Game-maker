/// @description Insert description here
// You can write your code in this editor

mapp = []

for (i = 0; i < 12 ; i+=1) {
	instance_create_layer(0,i*64,"test_layer",test_obj)
	mapp[i] = []
	
	for (j = 0; j < 21 ; j+=1) {
		instance_create_layer(j*64,i*64,"test_layer",test_obj)
			mapp[i][j] = 0
	}
}
show_debug_message(mapp)