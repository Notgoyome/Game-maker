// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_hp_bar() 
{	
	var_hp_bar = instance_create_layer(x,y,"GUI",hp_bar)
		var_hp_bar.hp = hp
		var_hp_bar.hp_max = hp_max
		var_hp_bar.is_not_dead = alive
}

function update_hp_bar() 
{	

	var_hp_bar.hp = hp
	var_hp_bar.hp_max = hp_max
	var_hp_bar.is_not_dead = alive

}

function delete_hp_bar()
{
	instance_destroy(hp_bar)
}