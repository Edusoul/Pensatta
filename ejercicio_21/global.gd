extends Node

var title = "Teléfono y apps"
var possible_variations = 1
var variation_number
var correct_answers_no = 0
var incorrect_answers_no = 0
var timer = 181
var timeout = false
var scene = 0
var lastScene = 3

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
