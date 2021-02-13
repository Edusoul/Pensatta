extends Node

var answered_correctly
var possible_variations = 1
var variation_number
var activeNum = 0

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
