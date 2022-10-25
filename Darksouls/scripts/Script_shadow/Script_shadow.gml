// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_shadow(x,y) 
{
	shadow_player = instance_create_layer(x,y,"shadow_instance",player_shadow)

	shadow_player.x = x
	shadow_player.y = y

}

function update_shadow(x,y) 
{

	
	shadow_player.x = x
	shadow_player.y = y
	if self.visible == false {instance_destroy(shadow_player)}
}

function delete_shadow(){instance_destroy(shadow_player)}