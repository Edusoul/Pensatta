extends Node2D

var pos1
var pos2
var pos3

func _ready():
	pass


func _on_FinishedButton_pressed():
	pos1 = $Shop1.get_position().y
	pos2 = $Shop2.get_position().y
	pos3 = $Shop3.get_position().y
	
	if (pos2 < pos3) and (pos3 < pos1):
		global.answered_correctly = true
	get_tree().change_scene("res://scenes/End.tscn")
