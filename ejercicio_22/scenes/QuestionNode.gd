extends Control

signal next

export(String, MULTILINE) var question = "question"
export var options = []
export var correctIndex = []

func _ready():
	find_node("Question").text = question	
	for option in options:
		var answer = false
		var button = Button.new()
		button.text = option
		for i in correctIndex:
			if option in options[i]:
				answer = true		
		button.connect("pressed", self, "_pressed",[answer])
		get_node("PanelContainer/MarginContainer/GridContainer").add_child(button)

func _pressed(rightAnswer):
	if rightAnswer:
		global.correct_answers_no += 1
	else:
		global.incorrect_answers_no += 1
	emit_signal("next")
