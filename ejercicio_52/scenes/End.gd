extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.success:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Acabaste con todos los virus"
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "Los virus acabaron tu vida"

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
