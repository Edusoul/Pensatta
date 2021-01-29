extends Node2D

var congratulations;
var bad_luck;


# Called when the node enters the scene tree for the first time.

func _ready():
	var l = Label.new()
	l.text = "hola"
	self.add_child(l)
	congratulations = get_node("Congratulations")
	bad_luck = get_node("BadLuck")
	if Global.answered_correctly:
		bad_luck.visible = false;
	else:
		congratulations.visible = false;
#	JavaScript.eval("window.top.postMessage('hello', '*')")

