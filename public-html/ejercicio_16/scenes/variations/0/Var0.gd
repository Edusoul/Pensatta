extends Node2D

func _ready():
	$FinishedButton.hide()

func _countCorrectAnswers():
	$Aciertos.text = "Aciertos: " + str(global.answered_correctly)

func _on_FinishedButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")

func _process(delta):
	if global.answered_correctly == 6:
		$FinishedButton.show()
