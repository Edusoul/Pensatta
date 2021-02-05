extends Node2D

var answers = [];
var correct;
var count = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_children():
		if i is Sprite:
			answers.append(i);
	var l = Label.new()
	l.text = str(count)
	self.add_child(l)
	
func _on_Button_pressed():
	correct = true;
	for answer in answers:
		for i in range(answer.get_children().size()):
			if i == answer.correct_index:
				if !answer.get_child(i).is_pressed():
					correct = false;
			else:
				if answer.get_child(i).is_pressed():
					count -=1
					correct = true;

	global.answered_correctly = correct;
	get_tree().change_scene("res://scenes/End.tscn")					
	
