extends Control

var spam = false
var pressed = false

func _ready():
	find_node("Check").hide()


func _on_Control_toggled(button_pressed):
	if button_pressed:
		find_node("Check").show()
		pressed = true
	else:
		find_node("Check").hide()
		pressed = false
