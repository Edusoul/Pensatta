extends Control

signal Next

export(String, MULTILINE) var question = "question"
export var options = []
export var correctIndex = []

func _ready():
	find_node("Question").text = question
	
	
	var content = question
	for option in options:
		var answer = false
		var button = Button.new()
		button.text = option
		button.toggle_mode = true
		for i in correctIndex:
			if option in options[i]:
				answer = true		
		button.connect("pressed", self, "_pressed",[answer])
		get_node("PanelContainer/MarginContainer/GridContainer").add_child(button)

func _pressed(rightAnswer):
	yield(get_tree().create_timer(1.0), "timeout")
	if rightAnswer:
		global.correct_answers_no += 1
	else:
		global.incorrect_answers_no += 1
	emit_signal("Next")
