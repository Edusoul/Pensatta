extends Label

var timer

func _ready():
	timer = get_child(0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text(str(int(timer.get_time_left())))
	pass


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/variations/0/tera.tscn")
	pass # Replace with function body.
