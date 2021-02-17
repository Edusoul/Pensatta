extends Node2D

export (PackedScene) var wordApp

signal end

var counter = 0
var apps = ["Facebook","Google","PowerPoint","Wikipedia","Chrome","TikTok"]
var opSystems = ["Windows","Linux","Ubuntu","MacOS"]
export(Array,Color) var colors = [""]

func _ready():
	$NextButton.hide()
	
	for i in range(len(apps)):
		var word = wordApp.instance()
		word.text = apps[i]
		word.is_system = false
		word.color = colors[i]
		word.color.v = 1.5
		
		add_child(word)
		connect("end",word,"_stop")
	
	for i in range(len(opSystems)):
		var system = wordApp.instance()
		system.text = opSystems[i]
		system.is_system = true
		system.color = colors[i]
		system.color.v = 1.5
		add_child(system)
		connect("end",system,"_stop")		
		system.connect("clicked",self,"_addCounter")
		
	
func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")
	
func _addCounter():
	counter += 1
	if counter == len(opSystems):
		global.answered_correctly = true
		$NextButton.show()
		emit_signal("end")
		
		
