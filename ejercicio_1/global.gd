extends Node

var answered_correctly
var possible_variations = 1
var variation_number

func pick_random_variation_number():
	randomize()
#	return 2
	return randi() % possible_variations
