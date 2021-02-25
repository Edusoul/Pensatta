extends Node2D

var blocks = preload("res://scenes/variations/0/Bloque.tscn")

var options = {"Curso para desarrollar el hábito de la lectura":true,
				"Lo último en farándula":false,
				"Memes":false,
				"Técnicas de meditación":true,
				"Métodos para lidiar con el estrés":true,
				"Noticieros políticos":false,
				"Historias de terror":false,
				"Clase de Yoga":true}
				
func _ready():
	$FinishedButton.hide()
	find_node("TitleLabel").text = global.title
	for i in range(len(options)):
		var block = blocks.instance()
		block.password = options.keys()[i]
		block.positive = options.values()[i]
		find_node("GridContainer").add_child(block)

func _countCorrectAnswers():
	$Aciertos.text = "Aciertos: " + str(global.answered_correctly)

func _on_FinishedButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")

func _process(delta):
	if global.answered == 8:
		$FinishedButton.show()
