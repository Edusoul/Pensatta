extends KinematicBody2D

#var moveBanda = Vector2()

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		global.moveBanda.x = 36
	move_and_slide(global.moveBanda)	
	
