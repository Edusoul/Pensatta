extends Navigation2D

var speed = 80
var path = []

func _input(event):
	if Input.is_action_pressed("click"):
		_new_position($KinematicBody2D.position, get_global_mouse_position())
#	if Input.is_action_pressed("ui_right"):
#		_new_position($KinematicBody2D.position, $"/root/Katty".position)
#	if Input.is_action_pressed("ui_left"):
#		_new_position($KinematicBody2D.position, $"/root/Katty".position)
#	if Input.is_action_pressed("ui_down"):
#		_new_position($KinematicBody2D.position, $"/root/Katty".position)
#	if Input.is_action_pressed("ui_up"):
#		_new_position($KinematicBody2D.position, $"/root/Katty".position)
func _new_position(pos_init, pos_end):
	path = self.get_simple_path(pos_init, pos_end, true)
	path.remove(0)
	
func _physics_process(delta):
	var distan = speed * delta
	_run_position(distan)
	
func _run_position(distan):
	var last_position = $KinematicBody2D.position
	for i in range(path.size()):
		var distance_end = last_position.distance_to(path[0])
		if distan <= distance_end:
			$KinematicBody2D.position = last_position.linear_interpolate(path[0], distan/distance_end)
			break
		elif distan <= 0.0:
			$KinematicBody2D.position = path[0]
			break
		distan -= distance_end
		last_position = path[0]	
		path.remove(0)
func _ready():
	pass
