extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var correct_checkboxes = [1, 5, 6, 8, 9, 11, 12, 15]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AnswerButton_pressed():
	for i in $CheckboxRect.get_children().size():
		if (i + 1) in correct_checkboxes:
			if $CheckboxRect.get_node("CheckBox" + str(i + 1)).pressed:
				global.correct_answers += 1
		else:
			if $CheckboxRect.get_node("CheckBox" + str(i + 1)).pressed:
				global.incorrect_answers += 1
	
	get_tree().change_scene("res://scenes/End.tscn")
