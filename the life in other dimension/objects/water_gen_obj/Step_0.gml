timer = (timer+1)%60

if H2O_max > H2O and timer%60 == 0 {
	H2O += 1
}

if interact = true {
	hero_obj.hydrogen += 2*H2O
	hero_obj.oxygen += H2O
	H2O = 0
	
	
	
	interact = false
}