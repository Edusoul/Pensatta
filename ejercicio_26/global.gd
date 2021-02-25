extends Node

var title = "Contenido Positivo"
var answered_correctly = 0
var answered = 0
var possible_variations = 1
var variation_number

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
