extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_1.tscn")

func _on_Board_mouse_exited():
	print("exited board")


func _on_Board_mouse_entered():
	print("entered_board")
