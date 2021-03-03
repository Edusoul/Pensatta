extends Node

var title = "Reflejos Musicales"
var timer = 181 #s
var timeout = false
var scene = 0
var last_scene = 0

var possible_variations = 1
var variation_number
var won = false

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
