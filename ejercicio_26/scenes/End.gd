extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	find_node("TitleLabel").text = global.title
	result_title = $Node2D/ResultLabel
	result_summary = $Node2D/SummaryLabel
	if global.answered_correctly == 8:
		result_title.text = "Felicitaciones"
		result_summary.text = "Identificaste correctamente el contenido positivo"
	elif global.answered_correctly == 1:
		result_title.text = "Mala suerte"
		result_summary.text = "Sólo lograste reconocer un elemento positivo"
	elif global.answered_correctly > 4:
		result_title.text = "¡Casi!"
		result_summary.text = """Lograste reconocer
		%x contenidos positivos""" %  global.answered_correctly
	else:
		result_title.text = "Sigue Intentando"
		result_summary.text = """Lograste reconocer
		%x contenidos positivos""" %  global.answered_correctly

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
