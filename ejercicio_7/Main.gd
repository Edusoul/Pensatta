extends Node2D

var answers = [];
var correct;

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_children():
		if i is Sprite:
			answers.push_back(i);
			



func _on_Button_pressed():
	correct = true;
	for answer in answers:
		for i in range(answers.get_children().size()):
			if i == answer.correct_index:
				if !answer.get_child(i).is_pressed():
					correct = false;
			else:
				if answer.get_child(i).is_pressed():
					correct = true;

	Global.answered_correctly = correct;
	print(answers)
	get_tree().change_scene("res://end.tscn")					
	
