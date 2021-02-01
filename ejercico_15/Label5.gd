extends Label


var timer

func _ready():
	timer = get_child(0)

func _process(delta):
	set_text(str(int(timer.get_time_left())))

