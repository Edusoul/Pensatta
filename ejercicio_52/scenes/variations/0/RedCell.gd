extends Node2D

var sprite
var vel
var initial_pos
var movement_constant

func _ready():
	sprite = get_node("redcell")
	randomize()
	var x_vel = randf() * 100 - 50
	randomize()
	var y_vel = randf() * 100 - 50
	vel = Vector2(x_vel, y_vel)
	initial_pos = sprite.position
	randomize()
	movement_constant = randf() * 2 + 3

func _physics_process(delta):
	var acc = - (sprite.position - initial_pos) * movement_constant
	vel = vel + acc * delta
	sprite.position = sprite.position + vel * delta
