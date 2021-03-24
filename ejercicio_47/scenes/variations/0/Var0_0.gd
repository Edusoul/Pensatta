extends Node2D

func _ready():
	find_node("TitleLabel").text = global.title

func _on_Button_pressed():
	global.answer_correct = 1
	get_tree().change_scene("res://scenes/End.tscn")

func _on_Button2_pressed():
	global.answer_correct = 0
	get_tree().change_scene("res://scenes/End.tscn")
