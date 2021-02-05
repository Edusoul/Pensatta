extends Label



#this function initializes the global 
#counter for all scenes

func _process(delta):
	if (global.timer_on):
		global.counter += delta
		text = var2str(int(global.counter))
	pass
