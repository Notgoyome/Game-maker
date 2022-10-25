
x += dx
y += dy

time_before_die--
if time_before_die <= 0 {instance_destroy(self)}
