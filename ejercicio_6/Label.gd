extends Label

#var time
#
#func _ready():
#	time = get_child(00)
#	pass
#
#func _process(delta):
#	set_text(str(int(time.get_time_left())))

var time = 0
var timer_on = true

func _process(delta):
	if (timer_on):
		time += delta
		text = var2str(int(time))
		
	pass
