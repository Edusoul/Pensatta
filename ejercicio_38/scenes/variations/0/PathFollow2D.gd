extends PathFollow2D

signal done

var move = false
var speed = 100
var began = false

func _process(delta):
	if move: set_offset(get_offset() + speed*delta)
	if get_unit_offset() == 1: emit_signal("done")
