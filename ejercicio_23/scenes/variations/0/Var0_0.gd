extends Node2D
# Load the custom images for the mouse cursor.
var arrow = load("res://assets/img/parts/Lupa 1.png")

func _ready():
	find_node("TitleLabel").text = global.title

func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")


func _on_DropZone_mouse_entered():
	Input.set_custom_mouse_cursor(arrow)


func _on_DropZone_mouse_exited():
	Input.set_custom_mouse_cursor(null)

