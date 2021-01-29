extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var programs = [];
var correct;


# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_children():
		if child is Sprite:
			programs.append(child);
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinishedButton_pressed():
	correct = true;
	for program in programs:
		for i in range(program.get_children().size()):
			if i == program.correct_checkbox_index:
				if !program.get_child(i).is_pressed():
					correct = false;
			else:
				if program.get_child(i).is_pressed():
					correct = false;

	global.answered_correctly = correct;
	get_tree().change_scene("res://End.tscn")
