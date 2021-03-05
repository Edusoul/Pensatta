extends Area2D

var accum = 0
var finish

func _ready():
	set_process(true)
	pass

func _process(delta):
	accum += delta
	if (finish == int(accum)):
		global.speed = 100
	pass


func _on_Shield_body_entered(body):
	if body.get_name() == "Katty":
		$SpriteShield.visible = false
		global.speed = 500
		global.counter = accum
		finish = int(global.counter) + 10
		print(finish)
	pass # Replace with function body.


func _on_Shield_body_exited(body):
	if body.get_name() == "Katty":
		queue_free()
	pass # Replace with function body.
