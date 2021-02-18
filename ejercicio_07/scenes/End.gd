extends Node2D


var result_title;
var result_summary;

func _ready():
	result_title = $ThoughtBubbleSprite/ResultLabel
	result_summary = $ThoughtBubbleSprite/SummaryLabel
	if global.answers_correct.size() == 3:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Respondiste todo bien."
	elif global.answers_correct.size() == 2:
		result_title.text = "¡Muy bien!"
		result_summary.text = "Respondiste acertadamente 2 de 3"
	elif global.answers_correct.size() == 1:
		result_title.text = "¡Debes mejorar!"
		result_summary.text = "Solo acertaste en una respuesta"
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "No acertaste en ninguna"
#		result_summary.text = "Respondiste " + str(global.answers_correct) \
#			+ " opciones bien y " + str(global.answers_correct) + " mal."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
