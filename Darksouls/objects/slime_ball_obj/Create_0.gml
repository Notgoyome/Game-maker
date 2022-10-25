random_xy = 1

vec_px = (global.player_x-x)*(1-random_xy/2+random(random_xy))
vec_py = (global.player_y-y)*(1-random_xy/2+random(random_xy))
angle = arctan2(vec_py,vec_px)
ax = (cos(angle)/pi)
ay = (sin(angle)/pi)

ball_speed = 60

time_before_die = 300+ random(45)

dx = ax*ball_speed
dy = ay*ball_speed




if global.slime_shoot_pattern == 0 {
dx = ax*ball_speed
dy = ay*ball_speed
}
else if global.slime_shoot_pattern == 1 {
dx = 0
dy = ball_speed*0.35

}