extends Area2D

func _ready():
	pass
	

func _on_Points_body_entered(body):
	if body.get_name() == "Katty":
		global.points.append(1)
		print(global.points)
		queue_free()
	pass # Replace with function body.
