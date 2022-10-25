// phase 1, fais un dash pendant son attaque si il est trop loin
hp = 480
hp_max = hp
hp_befort_hit = hp
create_shadow(x,y)
create_knockback(0)
sspeed = 2
lock_x_scale = false
alive = true
sspeed_ini = sspeed
sspeedmax = 5

//variable attack 0
samurai_attack0_speed = sprite_get_speed(samurai_attack)
min_samurai_attack0_speed = sprite_get_speed(samurai_attack)+4+8*(1-hp/hp_max)
max_samurai_attack0_speed = sprite_get_speed(samurai_attack)*2.5

will_hit = false

// dash affter getting hit
will_dash = false
priority_movement = false

//GUI
create_hp_bar() 