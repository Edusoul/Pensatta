extends Node2D

signal showing(id,isData)

#var fading = true
var shown = false
var isData = false
var id = 0
var data = "null"

func _ready():
	get_node("CoverAlpha").hide()
	get_node("Data/Label").text = data
	pass

func _on_Cover_mouse_entered():
	if !shown:
		get_node("CoverAlpha").show()

func _on_Cover_mouse_exited():
	get_node("CoverAlpha").hide()	

func _on_ControlPanel_gui_input(event):
	if event is InputEventMouseButton and !shown:
		shown = true
		$Cover.hide()
		$CoverAlpha.hide()
		emit_signal("showing",id,isData)
	
