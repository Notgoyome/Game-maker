//var change
block_name = string(ds_list_find_value(list_craft,choice_block_i))
hero_x = floor((hero_obj.x+32)/64)*64
hero_y = floor((hero_obj.y+32)/64)*64
//movement and keyboard 
move()
e_pressed()

//mouse click
left_click(cursor)
right_click(cursor)
scroll()
