extends Node2D


func _ready():
	pass # Replace with function body.



func _on_Button2_anterior():
	global.timer_on = true
	global.counter = 0
	get_tree().change_scene("res://scenes/variations/0/tera.tscn")
	pass # Replace with function body.





func _on_Button3_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
	pass # Replace with function body.
