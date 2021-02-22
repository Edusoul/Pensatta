extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass

func _physics_process(delta):
	motion = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		motion.x = global.speed
	if Input.is_action_pressed("ui_left"):
		motion.x = -global.speed
	if Input.is_action_pressed("ui_up"):
		motion.y = -global.speed
	if Input.is_action_pressed("ui_down"):
		motion.y = global.speed	
		
	
	motion = move_and_slide(motion)
	pass





