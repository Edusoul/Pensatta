extends Node

var counter = 0
var timer_on = true
var Show_count

var title = "Bit a byte"
var timer = 181 #s
var timeout = false
var scene = 0
var last_scene = 1 

var possible_variations = 1
var variation_number
var correct_answers_no = 0
var incorrect_answers_no = 0

func pick_random_variation_number():
	randomize()
	return randi() % possible_variations
