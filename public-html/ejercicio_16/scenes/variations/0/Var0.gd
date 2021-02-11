extends Node2D

var answers = 0
var rightAnswers = 0

func _ready():
	$FinishedButton.hide()

func _countCorrectAnswers(correct):
	answers += 1
	if correct:
		rightAnswers += 1
	$Aciertos.text = "Aciertos: " + str(rightAnswers)

func _on_FinishedButton_pressed():
	if rightAnswers == 6:
		global.answered_correctly = true
	get_tree().change_scene("res://scenes/End.tscn")

func _process(delta):
	if answers == 6:
		$FinishedButton.show()
