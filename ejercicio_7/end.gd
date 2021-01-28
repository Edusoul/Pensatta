extends Node2D

var congratulations;
var bad_luck;

# Called when the node enters the scene tree for the first time.

func _ready():
	congratulations = get_node("ColorRect/Congratulations")
	bad_luck = get_node("ColorRect/BadLuck")
	if Global.answered_correctly:
		bad_luck.visible = false;
	else:
		congratulations.visible = true;
	JavaScript.eval("window.top.postMessage('hello', '*')")

