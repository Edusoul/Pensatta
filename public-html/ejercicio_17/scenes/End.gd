extends Node2D


# Declare member variables here. Examples:
var congratulations;
var bad_luck;

# Called when the node enters the scene tree for the first time.
func _ready():
	congratulations = get_node("Congratulations")
	bad_luck = get_node("BadLuck")
	if global.answered_correctly:
		bad_luck.visible = false;
	else:
		congratulations.visible = false;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")


func _on_NextButton_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
