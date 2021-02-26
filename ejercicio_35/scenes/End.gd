extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	if global.timeout == false: #Generally timeout is false when there is no timer
		result_title.text = "¡Lástima!"
		result_summary.text = """Consumiste una práctica insegura. \n
			Puntaje: {p}""".format({"p":global.correct_answers_no})
	else:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = """Consumiste las prácticas seguras. \n
			Puntaje: {p}""".format({"p":global.correct_answers_no})

func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
