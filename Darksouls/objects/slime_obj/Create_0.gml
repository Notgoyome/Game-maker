

depth = 2
hp = 280
hp_max = hp
knockback =0
sspeed = 4
dx = 0
dy = 0
status = "normal"
phase = 0
lock_x_scale = false
alive = sprite_index != slime_die
rnd_shoot_range = 0
status_cd = 0
n_attack = 0

ready_to_sprint = 0

shoot_cd = 120
n_ball = 0
ball_timer = 10
ball_timer_check = false
global.slime_shoot_pattern = 0

will_exhaust = false
exhaust_cd = 0

movement_timer = 0
single_time_check = false
test = sqrt(sqr(x-global.player_x)+sqr(y-global.player_y)*1.20)

create_hp_bar() 