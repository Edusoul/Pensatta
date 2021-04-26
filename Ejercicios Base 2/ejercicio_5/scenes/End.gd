extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")

	if global.correct_answers_no.size() > 3: #Change accordingly
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Completaste el ejercico correctamente."
			
#		elif global.correct_answers_no == 1:
#			result_title.text = "¡Continúa intentando!"
#			result_summary.text = "Respondiste {c} pregunta bien y {i} mal".format(
#				{"c":global.correct_answers_no,
#				"i":global.incorrect_answers_no})
#		else:
#			result_title.text = "¡Continúa intentando!"
#			result_summary.text = "Respondiste {c} preguntas bien y {i} mal".format(
#				{"c":global.correct_answers_no,
#				"i":global.incorrect_answers_no})
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "Mejor suerte para la proxima."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
