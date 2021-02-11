extends Node2D


# Declare member variables here. Examples:
var result_title;
var result_summary;

# Called when the node enters the scene tree for the first time.
func _ready():
	result_title = $Node2D/ResultLabel
	result_summary = $Node2D/SummaryLabel
	if global.answered_correctly:
		result_title.text = "Felicitaciones"
		result_summary.text = "Identificaste correctamente las contraseñas"
	else:
		result_title.text = "Mala suerte"
		result_summary.text = "No lograste reconocer la seguridad de las contraseñas"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinishButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
