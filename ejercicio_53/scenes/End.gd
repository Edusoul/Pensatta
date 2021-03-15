extends Node2D

var result_title;
var result_summary;

func _ready():
	find_node("TitleLabel").text = global.title
	
	result_title = find_node("ResultLabel")
	result_summary = find_node("SummaryLabel")

	if global.correct_answers_no.size() == 7 and global.incorrect_answers_no.size() == 3:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Respondiste todo bien."
	if global.correct_answers_no.size() == 6 and global.incorrect_answers_no.size() == 4:
		result_title.text = "¡Muy Bien!"
		result_summary.text = "Respondiste 6 correctas, fallaste 1"
	if global.correct_answers_no.size() == 5 and global.incorrect_answers_no.size() == 5:
		result_title.text = "¡Bien!"
		result_summary.text = "Respondiste 5 correctas, fallaste 2"
	if global.correct_answers_no.size() == 4 and global.incorrect_answers_no.size() == 6:
		result_title.text = "¡Debes mejorar!"
		result_summary.text = "Respondiste 4 correctas, fallaste 3"
	if global.correct_answers_no.size() == 3 and global.incorrect_answers_no.size() == 7:
		result_title.text = "¡Concentrate mas!"
		result_summary.text = "Respondiste 3 correctas, fallaste 4"
	if global.correct_answers_no.size() == 2 and global.incorrect_answers_no.size() == 8:
		result_title.text = "¡Animo puedes mejorar!"
		result_summary.text = "Respondiste 2 correctas, fallaste 5"
	if global.correct_answers_no.size() == 1 and global.incorrect_answers_no.size() == 9:
		result_title.text = "¡Sigue intentando!"
		result_summary.text = "Respondiste 1 correctas, fallaste 6"
	if global.incorrect_answers_no.size() == 10:
		result_title.text = "¡No acertaste ninguna!"
func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
