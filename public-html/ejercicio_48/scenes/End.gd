extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	result_title = $Katty2Sprite/ResultLabel
	result_summary = $Katty2Sprite/SummaryLabel
	if global.answered_correctly:
		result_title.text = "Felicitaciones"
		result_summary.text = "Identificaste correctamente los tipos de datos"
	else:
		result_title.text = "Mala suerte"
		result_summary.text = "No identificaste a tiempo los tipos de datos"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
