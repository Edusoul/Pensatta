extends Area2D

enum Direction { RIGTH, LEFT }
onready var rigth = $RayCast2D
onready var left = $RayCast2D2
var dir = Direction.RIGTH

func _integrate_forces(state):
	if abs(state.get_linear_velocity().x) < 0.2:
		if dir == Direction.RIGTH:
			dir = Direction.LEFT
			$Sprite.flip_h = true
		elif dir == Direction.LEFT:
			dir = Direction.RIGTH
			$Sprite.flip_h = false
		
	if dir == Direction.RIGTH:
		if rigth.is_colliding():
#			set_linear_velocity(Vector2(50, 0))
			print("Hola")
	else:
		dir = Direction.LEFT
	
	if dir == Direction.LEFT:
		if left.is_colliding():
#			set_linear_velocity(Vector2(-50, 0))
			print("Adios")
	else:
		dir = Direction.RIGTH
