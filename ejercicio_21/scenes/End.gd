extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	find_node("TitleLabel").text = global.title
	result_title = $ThoughtBubbleSprite/ResultLabel
	result_summary = $ThoughtBubbleSprite/SummaryLabel
	if global.timeout == false:
		if global.correct_answers_no == 4:
			result_title.text = "¡Felicitaciones!"
			result_summary.text = "Respondiste todo bien."
			
		elif global.correct_answers_no == 1:
			result_title.text = "¡Continúa intentando!"
			result_summary.text = "Respondiste {c} pregunta bien y {i} mal".format(
				{"c":global.correct_answers_no,
				"i":global.incorrect_answers_no})
		else:
			result_title.text = "¡Continúa intentando!"
			result_summary.text = "Respondiste {c} preguntas bien y {i} mal".format(
				{"c":global.correct_answers_no,
				"i":global.incorrect_answers_no})
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "Se agotó tu tiempo de respuesta."


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
