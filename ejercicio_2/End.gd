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
	JavaScript.eval("window.top.postMessage('hello', '*')")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
