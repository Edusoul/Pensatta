extends Node2D

var sentence = []
var answer = []
var counter = 0
var code ={
	"a": "b", "b": "c", "c": "d", "d": "e",
	"e": "f", "f": "g", "g": "h", "h": "i",
	"i": "j", "j": "k", "k": "l", "l": "m",
	"m": "n", "n": "o", "o": "p", "p": "q",
	"q": "r", "r": "s", "s": "t", "t": "u",
	"u": "v", "v": "w", "w": "x", "x": "y",
	"y": "z", "z": "a", " ": " ", "0": "[color=red]■[/color]",
	"1": "[color=yellow]■[/color]", "2": "[color=blue]■[/color]", "3": "[color=green]■[/color]",
	"4": "[color=purple]■[/color]", "5": "[color=#FF8000]■[/color]", "6": "[color=white]■[/color]",
	"7": "[color=black]■[/color]", "8": "[color=#804000]■[/color]", "9": "[color=grey]■[/color]",
	"A": "b", "B": "c", "C": "d", "D": "e",
	"E": "f", "F": "g", "G": "h", "H": "i",
	"I": "j", "J": "k", "K": "l", "L": "m",
	"M": "n", "N": "o", "O": "p", "P": "q",
	"Q": "r", "R": "s", "S": "t", "T": "u",
	"U": "v", "V": "w", "W": "x", "X": "y",
	"Y": "z", "Z": "a"
}

func _ready(): 
	var style = StyleBoxFlat.new()
	var color = Color(0.9, 0.5, 0.2)
	style.set_bg_color(color)
	$Button.set("custom_styles/normal", style)
	pass

func _on_LineEdit_text_changed(new_text):
	$Label.text = new_text
	sentence = $Label.text
	_encode()
	
func _encode():
	answer = []
	var joined = []
	$RichTextLabel.visible = false
	$Button2.visible = false
	$Button.visible = false
	for letter in sentence:
		for i in code.keys():
			if i == letter:
				answer.append(code[i])
				if answer.size() > 0:
					$Button.visible = true
					$Button2.visible = true
					$RichTextLabel.visible = true
					var splitted = answer
					joined = PoolStringArray(splitted).join("")
					$RichTextLabel.bbcode_text = str(joined)
			
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0.tscn")
	pass # Replace with function body.


func _on_Button2_next():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
	pass # Replace with function body.
