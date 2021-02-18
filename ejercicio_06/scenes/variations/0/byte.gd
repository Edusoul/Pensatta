extends Node2D


func _ready():
	pass # Replace with function body.



func _on_Button2_anterior():
	global.timer_on = true
	global.counter = 0
	get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
	pass # Replace with function body.





func _on_Button3_pressed():
	get_tree().change_scene("res://scenes/End.tscn")
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/0/kilo.tscn")
	pass # Replace with function body.
