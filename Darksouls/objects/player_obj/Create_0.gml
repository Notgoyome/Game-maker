//a debug


player_hp = 500
player_hp_max = 10
player_speed = 6
player_init_damage = 50
player_xscale = image_xscale


depth = 3
global.player_x = x
global.player_y = y
global.player_depth = depth
global.player_damage = player_init_damage
global.player_visible = self.visible 
global.alpha_die = 0


player_dash_side = 1
player_is_dash = false
player_dash_cd = 0
player_dash_distance = 0

player_attack_list = ds_list_create()
player_attack_index = 0
ds_list_add(player_attack_list, adventurer_attack)
ds_list_add(player_attack_list, adventurer_attack_2)
ds_list_add(player_attack_list, adventurer_attack_3)
player_is_attack = false
player_damage = false
player_attack_reset = 0
single_time_check = false
shadow_x = x
old_dirx = 1
old_diry = 0
//init


create_shadow(x,y)




