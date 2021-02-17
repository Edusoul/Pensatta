extends Control

var id2 = -1
var onOrigin = false

func _ready():
	find_node("Shadow").hide()
	
func _process(delta):
	if global.clear:
		find_node("Shadow").hide() #Hide all shadows
