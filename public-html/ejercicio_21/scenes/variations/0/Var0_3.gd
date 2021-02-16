extends Node2D

func _ready():
	get_node("Question").connect("next_scene",self,"_on_AnswerButton_pressed")

func _on_AnswerButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")
