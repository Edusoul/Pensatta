extends KinematicBody2D

#var move = Vector2()

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		global.move.x = 20
	move_and_slide(global.move)
	

