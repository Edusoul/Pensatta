extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var wheel_spinning = false
var wheel_spun = false
var wheel_rotation_vel = 0
var wheel_rotation_acc = -120
var final_question


# Called when the node enters the scene tree for the first time.
func _ready():
	$FinishedButton.visible = false
	pass # Replace with function body.
	
func _physics_process(delta):
	if wheel_spinning:
		$SpinWheelSprite.rotation_degrees += wheel_rotation_vel * delta
		wheel_rotation_vel += wheel_rotation_acc*delta
		if wheel_rotation_vel <= 0:
			wheel_spinning = false
			var final_rotation = int(floor($SpinWheelSprite.rotation_degrees)) \
				 % 360
			if final_rotation < 72:
				final_question = 1
			elif final_rotation < 144:
				final_question = 5
			elif final_rotation < 216:
				final_question = 4
			elif final_rotation < 288:
				final_question = 3
			elif final_rotation < 360:
				final_question = 2
			print(final_question)
				

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_SpinButton_pressed():
	randomize()
	wheel_spinning = true
	
	wheel_rotation_vel = 360 + randf()*360

func _on_FinishedButton_pressed():
#	global.answered_correctly = 
	get_tree().change_scene("res://scenes/End.tscn")
