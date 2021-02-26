extends Node2D

var result_title;
var result_summary;

func _ready():
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	result_title.text = "Felicitaciones"
	result_summary.text = "Identificaste los sistemas operativos"


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
