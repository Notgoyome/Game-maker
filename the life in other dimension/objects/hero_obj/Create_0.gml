

//inventory
inv_open = false
list_craft = ds_list_create();

ds_list_add(list_craft,block_obj)
ds_list_add(list_craft,water_gen_obj)

//ressource
hydrogen = 0
helium = 0
lithium = 0
beryllium = 0
//
//
//
oxygen = 0

//block 
list_block = ds_list_create();
choice_block_i = 0
choice_block = ds_list_find_value(list_craft,choice_block_i)


//movement 

dirx = 0;
diry = 0;
angle = 0;
speedd = 6;

//intialize object

cursor = instance_create_layer(mouse_x,mouse_y,"GUI",cursor_obj)

//initialize 