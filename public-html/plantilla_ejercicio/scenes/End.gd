extends Node2D


var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	result_title = $ThoughtBubbleSprite/ResultLabel
	result_summary = $ThoughtBubbleSprite/SummaryLabel
#	if global.correct_answers_no == (número de respuestas correctas):
#		result_title.text = "¡Felicitaciones!"
#		result_summary.text = "Respondiste todo bien."
#	else:
#		result_title.text = "¡Continúa intentando!"
#		result_summary.text = "Respondiste " + str(global.correct_answers_no) \
#			+ " opciones bien y " + str(global.incorrect_answers_no) + " mal."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
