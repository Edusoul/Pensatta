extends Control

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
		for i in correctIndex:
			if option in options[i]:
				answer = true		
		button.connect("pressed", self, "_pressed",[answer])
		get_node("PanelContainer/MarginContainer/GridContainer").add_child(button)

func _pressed(rightAnswer):
	if rightAnswer:
		pass #Qué se hace si la respuesta es correcta
	else:
		pass #Qué hacer si la respuesta fue incorrecta
