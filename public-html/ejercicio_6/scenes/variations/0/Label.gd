extends Label



#this function initializes the global 
#counter for all scenes

func _process(delta):
	if (global.timer_on):
		global.counter += delta
#		text = var2str(int(global.counter))
	var secs = fmod(global.counter, 60)
	var mins = fmod(global.counter, 60*60)/60
		
	var time_passed = "%02d : %02d" % [mins,secs]
	text = time_passed
	
	pass
