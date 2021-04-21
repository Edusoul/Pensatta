extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")
	
	if global.answer_correctly.size() == 4:
		result_title.text = "隆Felicitaciones!"
		result_summary.text = "Respondiste todo bien."
			
	elif global.answer_correctly.size() == 3 and global.answer_wrong.size() == 1:
		result_title.text = "隆Muy bien!"
		result_summary.text = "Respondiste 3 correctas"
	elif global.answer_correctly.size() == 2 and global.answer_wrong.size() == 2:
		result_title.text = "隆Bien!"
		result_summary.text = "Respondiste 2 correctas"
	elif global.answer_correctly.size() == 1 and global.answer_wrong.size() == 3:
		result_title.text = "隆Debes mejorar!"
		result_summary.text = "Respondiste 1 correctamente"
	elif global.answer_correctly.size() == 0 and global.answer_wrong.size() == 4:
		result_title.text = "隆Haz fallado!"
		result_summary.text = "頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副頎巾副Vuelve a intentar"


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
