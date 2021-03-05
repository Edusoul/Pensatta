extends KinematicBody2D

var position_enemy = Vector2(0, 1)
export (int) var velocity

func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	if test_move(Transform2D(0, Vector2(position.x, position.y)), Vector2(0, 1)):
		position_enemy.y *= -1
	if test_move(Transform2D(0, Vector2(position.x, position.y)), Vector2(0, -1)):
		position_enemy.y *= -1
	move_and_slide(position_enemy * velocity)
