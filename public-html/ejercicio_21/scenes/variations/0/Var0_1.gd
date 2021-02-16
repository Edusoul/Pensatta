extends Node2D

func _ready():
	get_node("Question").connect("next_scene",self,"_on_NextButton_pressed")

func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_2.tscn")

