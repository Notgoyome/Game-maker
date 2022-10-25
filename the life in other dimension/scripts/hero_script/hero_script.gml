// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move(){
	dirx = 0
	diry = 0
	if keyboard_check(ord("D"))
	{
		dirx = 1
	}
	if keyboard_check(ord("Q"))
	{
		dirx = -1
	}
	if keyboard_check(ord("Z"))
	{
		diry = -1
	}
	if keyboard_check(ord("S"))
	{
		diry = 1
	}
	
	angle = arctan2(diry,dirx)
	if dirx != 0 {
		x += cos(angle)*speedd
	}
	y += sin(angle)*speedd
}

function right_click(cursor)
{
	if mouse_check_button(mb_right) {
		destroy_block()
	}

}

function left_click(cursor){
	if mouse_check_button(mb_left) {
		
		if not inv_open {
			/// not choice_block but all block for ...
			
			if not position_meeting( cursor.x, cursor.y, choice_block )
			{
				bloock = instance_create_layer(cursor.x,cursor.y,"Instances",choice_block)
				bloock.destroy = false
				bloock.interact = false
				ds_list_add(list_block,bloock)
			}
		}
	
	
	
	}

}

function e_pressed() {
	if keyboard_check_pressed(ord("E")) {
		
		interact_block()
		/*
		inv_open = not(inv_open)
		if inv_open {
			instance_create_layer(room_width/2,room_height/2,"GUI",inv_obj)
			instance_create_layer(4*64,3*64,"GUI",block_obj)
			
		}
		else {
			instance_destroy(inv_obj)
		}
		*/
	
	}

}

function scroll(){
	if mouse_wheel_down() {
		choice_block_i = ((choice_block_i + 1)%ds_list_size(list_craft))
		choice_block = ds_list_find_value(list_craft,choice_block_i)
	}
	if mouse_wheel_up(){
		choice_block_i = ((choice_block_i - 1)%ds_list_size(list_craft))
		choice_block = ds_list_find_value(list_craft,choice_block_i)
	}
	
}


//destroy block

function destroy_block(){
	

		for (i=0; i<ds_list_size(list_block);i+=1)
		{
				block_i = ds_list_find_value(list_block,i)
				if block_i.x == cursor.x and block_i.y == cursor.y 
				{
					instance_destroy(block_i)
					ds_list_delete(list_block,i)
				}
		}

}

function interact_block(){
	
	for (i=0; i<ds_list_size(list_block);i+=1)
	{
			block_i = ds_list_find_value(list_block,i)
			if block_i.x == hero_x and block_i.y == hero_y
			{
				block_i.interact = true

			}
	}



}
