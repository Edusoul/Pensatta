extends Node

var title = "Inteligencia artificial?"
var timer = 181 #s
var timeout = false
var scene = 0
var last_scene = 0

var possible_variations = 1
var variation_number
var correct_answers_no = []
var incorrect_answers_no = []

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
