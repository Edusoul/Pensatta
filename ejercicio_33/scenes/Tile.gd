extends Control

var Rclick = false
var Lclick = false
var mouseIn = false
var on = false

func _ready():
	find_node("BlackTile").hide()
	find_node("ShadowTile").hide()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed and mouseIn:
			global.Rclick = true
			find_node("BlackTile").show()
		elif event.button_index == BUTTON_RIGHT and event.pressed and mouseIn:
			global.Lclick = true
			find_node("BlackTile").hide()
		else:
			Rclick = false
			Lclick = false

func _mouse_entered():
	mouseIn = true
	find_node("ShadowTile").show()
	if global.Rclick:
		find_node("BlackTile").show()
		on = true
	if global.Lclick:
		find_node("BlackTile").hide()
		on = false

func _mouse_exited():
	mouseIn = false
	find_node("ShadowTile").hide()
