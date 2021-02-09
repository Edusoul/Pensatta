extends Node2D

var sentence = []
var answer = []
var counter = 0
var codigo ={
	"a": "b", "b": "c", "c": "d", "d": "e",
	"e": "f", "f": "g", "g": "h", "h": "i",
	"i": "j", "j": "k", "k": "l", "l": "m",
	"m": "n", "n": "o", "o": "p", "p": "q",
	"q": "r", "r": "s", "s": "t", "t": "u",
	"u": "v", "v": "w", "w": "x", "x": "y",
	"y": "z", "z": "a", " ": " ", "0": "[color=red]■[/color]",
	"1": "[color=yellow]■[/color]", "2": "[color=blue]■[/color]", "3": "[color=green]■[/color]",
	"4": "[color=purple]■[/color]", "5": "[color=orange]■[/color]", "6": "[color=white]■[/color]",
	"7": "[color=black]■[/color]", "8": "[color=brown]■[/color]", "9": "[color=grey]■[/color]"
}

func _ready():
	pass

func _on_LineEdit_text_changed(new_text):
	$Label.text = new_text
	sentence = $Label.text
	_codificar()
	
func _codificar():
	answer = []
	for letter in sentence:
		for i in codigo.keys():
			if i == letter:
				answer.append(codigo[i])
				var splitted = answer
				var joined = PoolStringArray(splitted).join("")
				$RichTextLabel.bbcode_text = str(joined)
	
#func _delete():
#	if Input.is_action_pressed("borrar"):
#		counter -= 1
#		sentence.pop_back()

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0.tscn")
	pass # Replace with function body.
