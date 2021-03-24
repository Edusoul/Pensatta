extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.answer_correct == 1: 
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Respondiste bien."
	elif global.answer_correct == 0:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Respondiste bien pero este no era el algoritmo óptimo"


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
