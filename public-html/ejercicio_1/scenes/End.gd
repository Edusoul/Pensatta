extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	result_title = $ThoughtBubbleSprite/ResultLabel
	result_summary = $ThoughtBubbleSprite/SummaryLabel
	if global.correct_answers == 8 and global.incorrect_answers == 0:
		result_title.text = "¡Felicitaciones!"
		result_summary.text = "Acertaste en todas las opciones."
	else:
		result_title.text = "¡Continúa intentando!"
		result_summary.text = "Marcaste " + str(global.correct_answers) + \
			" correctas y " + str(global.incorrect_answers) + \
			" incorrectas."

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
