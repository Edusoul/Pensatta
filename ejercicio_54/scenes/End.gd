extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.won: 
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Replicaste bien la canción."
	else:
		result_title.text = "¡Sigue intentando!"
		result_summary.text = "No lograste tocar bien la canción."

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
