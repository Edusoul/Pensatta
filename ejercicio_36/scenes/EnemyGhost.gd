extends KinematicBody2D

var position_enemy = Vector2(1, 0)
export (int) var velocity

#var pos = 0

func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	if test_move(Transform2D(0, Vector2(position.x, position.y)), Vector2(1, 0)):
		position_enemy.x *= -1
		$Sprite.flip_h = true
	if test_move(Transform2D(0, Vector2(position.x, position.y)), Vector2(-1, 0)):
		position_enemy.x *= -1
		$Sprite.flip_h = false

	move_and_slide(position_enemy * velocity)
#	pos = get_angle_to(get_parent().get_parent().get_node("/root/Katty").position)
#	position += Vector2(1,0).rotated(pos)
	pass


	


