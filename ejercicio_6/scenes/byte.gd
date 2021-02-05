extends Node2D


func _ready():
	pass # Replace with function body.



func _on_Button2_anterior():
	global.timer_on = true
	global.counter = 0
	get_tree().change_scene("res://scenes/tera.tscn")
	pass # Replace with function body.



