extends Node2D


# Declare member variables here. Examples:
var congratulations;
var bad_luck;
var missed_some;

# Called when the node enters the scene tree for the first time.
func _ready():
	missed_some = get_node("MissedSome")
	bad_luck = get_node("BadLuck")
	congratulations = get_node("Congratulations")
	if global.answer_mode == 0:
		bad_luck.visible = false;
		congratulations.visible = false;
	elif global.answer_mode == 1:
		missed_some.visible = false;
		congratulations.visible = false;
	elif global.answer_mode == 2:
		missed_some.visible = false;
		bad_luck.visible = false;
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
