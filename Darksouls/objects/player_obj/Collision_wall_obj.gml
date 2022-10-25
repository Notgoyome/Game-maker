if not place_free(old_x,y){
	y = old_y
}
if not place_free(x,old_y){
	x = old_x
}

if not place_free(x,y){
	x = old_x
	y = old_y
}
