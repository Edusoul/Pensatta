extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.timeout == false: #Generally timeout is false when there is no timer
		if global.answer_correctly.size() == 4: #Change accordingly
			result_title.text = "¡Felicitaciones!"
			result_summary.text = "Respondiste todo bien."
			
		elif global.answer_correctly.size() == 3:
			result_title.text = "¡Muy bien!"
			result_summary.text = "Respondiste 3 preguntas bien y 1 mal"
		
		elif global.answer_correctly.size() == 2:
			result_title.text = "¡Bien!"
			result_summary.text = "Respondiste 2 preguntas bien y 2 mal"
			
		elif global.answer_correctly.size() == 1:
			result_title.text = "¡Debes mejorar!"
			result_summary.text = "Respondiste 1 pregunta bien y 3 mal"
			
		elif global.answer_correctly.size() == 0:
			result_title.text = "¡Continúa intentando!"
			result_summary.text = "No respondiste nada"	
				

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
