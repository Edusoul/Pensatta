extends Label

func _process(delta):
	if (global.timer_on):
		global.time -= delta
	
	global.secs = fmod(global.time, 60)
	global.mins = fmod(global.time, 60*60)/60
	global.time_passed = "%02d : %02d" % [global.mins, global.secs]
	text = global.time_passed
	if  int(global.time_passed) == 0:
		get_tree().change_scene("res://scenes/End.tscn")
		
#esta parte del codigo iniciaria la cuenta regresiva desde el 10 hacia abajo		
#var timer
#
#func _ready():
#	timer = get_child(0)
#
#func _process(delta):
#	set_text(str(int(timer.get_time_left())))


