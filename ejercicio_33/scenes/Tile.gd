extends Control

var Rclick = false
var Lclick = false
var mouseIn = false
var on = false

func _ready():
	find_node("BlackTile").hide()
	find_node("ShadowTile").hide()
			
func _process(delta):
	var pos = self.get_local_mouse_position()
	if ((pos.x < 58) and (pos.x > 0)) and \
		((pos.y < 58) and (pos.y > 0)):
		mouseIn = true
		find_node("ShadowTile").show()
		if global.Rclick:
			find_node("BlackTile").show()
			on = true
		if global.Lclick:
			find_node("BlackTile").hide()
			on = false
	else:
		mouseIn = false
		find_node("ShadowTile").hide()
