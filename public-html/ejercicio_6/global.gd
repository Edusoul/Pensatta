extends Node


var counter = 0
var timer_on = true
var show_count

var answered_correctly
var possible_variations = 3
var variation_number

func pick_random_variation_number():
	randomize()
#	return 2
	return randi() % possible_variations
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
