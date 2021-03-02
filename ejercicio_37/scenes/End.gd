extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	
	if global.correct_answers_no == 1: #Change accordingly
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Operaste bien el semáforo"

	elif global.incorrect_answers_no == 1:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "No usaste todos los bloques."


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
