extends Control

signal next_scene

export var title = "Title"
export var question = "question"
export var options = []
export var correctIndex = []

func _ready():
	find_node("Title").text = title
	find_node("Question").text = question
	
	
	var content = question
	for option in options:
		var answer = false
		var button = Button.new()
		button.text = option
		for i in correctIndex:
			if option in options[i]:
				answer = true		
		button.connect("pressed", self, "_pressed",[answer])
		get_node("PanelContainer/MarginContainer/GridContainer").add_child(button)

func _pressed(answer):
	if answer:
		global.correct_answers_no += 1
	else:
		global.incorrect_answers_no += 1
	print(global.correct_answers_no)
	print(global.incorrect_answers_no)
	emit_signal("next_scene")
