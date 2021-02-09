extends Label

var time

func _ready():
	time = get_child(0)
	pass # Replace with function body.

func _process(delta):
	set_text(str(int(time.get_time_left())))
