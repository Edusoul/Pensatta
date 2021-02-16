extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	result_title = $ThoughtBubbleSprite/ResultLabel
	result_summary = $ThoughtBubbleSprite/SummaryLabel
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
#		result_summary.text = "Respondiste " + str(global.correct_answers_no) \
#			+ " opciones bien y " + str(global.incorrect_answers_no) + " mal."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
