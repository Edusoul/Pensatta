extends Node

var title = "Pintando con 1 y 0"
var timer = 181 #s
var timeout = false
var scene = 0
var last_scene = 0

var possible_variations = 1
var variation_number
var correct_answers_no = 0
var incorrect_answers_no = 0

var Rclick = false
var Lclick = false

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			Rclick = true
		elif event.button_index == BUTTON_RIGHT and event.pressed:
			Lclick = true
		else:
			Rclick = false
			Lclick = false


func pick_random_variation_number():
	randomize()
	return randi() % possible_variations