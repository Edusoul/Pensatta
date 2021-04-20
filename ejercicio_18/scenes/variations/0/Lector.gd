extends KinematicBody2D

var move = Vector2()

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		move.y = 36
	move_and_slide(move)	
