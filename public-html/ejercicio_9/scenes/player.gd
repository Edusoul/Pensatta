extends KinematicBody2D

var motion = Vector2()
var speed = 100

func _physics_process(delta):
	motion = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	if Input.is_action_pressed("ui_left"):
		motion.x = -speed
	if Input.is_action_pressed("ui_up"):
		motion.y = -speed
	if Input.is_action_pressed("ui_down"):
		motion.y = speed	
		
	
	motion = move_and_slide(motion)
	pass


