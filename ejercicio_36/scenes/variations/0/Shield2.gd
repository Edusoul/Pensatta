extends Area2D

func _ready():
	pass


func _on_Shield2_body_entered(body):
	if body.get_name() == "Katty":
		$SpriteShield.visible = false
		global.speed = 500
	pass # Replace with function body.
