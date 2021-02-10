extends Node2D

var answers = 0

func _ready():
	pass

func _countCorrectAnswers(correct):
	if correct:
		answers += 1
	$Aciertos.text = "Aciertos: " + str(answers)

func _on_FinishedButton_pressed():
	if answers == 6:
		global.answered_correctly = true
	get_tree().change_scene("res://scenes/End.tscn")
