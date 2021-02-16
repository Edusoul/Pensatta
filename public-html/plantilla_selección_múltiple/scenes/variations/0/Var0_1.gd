extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AnswerButton_pressed():
	global.correct_answers_no = 10
	global.incorrect_answers_no = 10
	get_tree().change_scene("res://scenes/End.tscn")
