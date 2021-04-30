extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.timeout == false: #Generally timeout is false when there is no timer
		if global.correct_answers_no.size() == 4: #Change accordingly
			result_title.text = "¡Felicitaciones!"
			result_summary.text = "Respondiste todo bien."
			
		elif global.correct_answers_no.size() == 3:
			result_title.text = "¡Muy Bien!"
			result_summary.text = "Respondiste 3 acertadamente"
		elif global.correct_answers_no.size() == 2:
			result_title.text = "¡Bien!"
			result_summary.text = "Respondiste 2 acertadamente"			
		elif global.correct_answers_no.size() == 1:
			result_title.text = "¡Continúa intentando!"
			result_summary.text = "Solo contestaste una"
		elif global.correct_answers_no.size() == 0:
			result_title.text = "¡Continúa intentando!"
			result_summary.text = "No contestaste ninguna"			
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "Se agotó tu tiempo."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
