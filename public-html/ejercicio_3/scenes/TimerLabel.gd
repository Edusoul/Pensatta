extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timer


# Called when the node enters the scene tree for the first time.
func _ready():
	timer = get_child(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text(str(int(timer.get_time_left())))
