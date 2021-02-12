extends Node2D

export (PackedScene) var wordApp

signal end

var counter = 0
var apps = ["Facebook","Google","PowerPoint","Wikipedia","Chrome"]
var opSystems = ["Windows","Linux","Ubuntu","MacOS"]

func _ready():
	$NextButton.hide()
	$MarginContainer/TitleLabel.text = "Sistemas Operativos Identificados: 0"
	
	for app in apps:
		var word = wordApp.instance()
		word.text = app
		word.is_system = false
		add_child(word)
		connect("end",word,"_stop")
	
	for sys in opSystems:
		var system = wordApp.instance()
		system.text = sys
		system.is_system = true
		add_child(system)
		connect("end",system,"_stop")		
		system.connect("clicked",self,"_addCounter")
		
	
func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")
	
func _addCounter():
	counter += 1
	$MarginContainer/TitleLabel.text = "Sistemas Operativos Identificados: " + str(counter)
	if counter == len(opSystems):
		global.answered_correctly = true
		$NextButton.show()
		emit_signal("end")
		
		
