extends Node2D

var sentence = []

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_changed(new_text):
	sentence.push_back(new_text)
	print(sentence)
	print(sentence.size())

	pass # Replace with function body.
