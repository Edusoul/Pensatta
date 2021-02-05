extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time 

# Called when the node enters the scene tree for the first time.
func _ready():
	time = get_child(0)
	pass # Replace with function body.

func _process(delta):
	set_text(str(int(time.get_time_left())))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/variations/0/Main.tscn")
	pass # Replace with function body.
