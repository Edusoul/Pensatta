extends Node2D

var sentence = []
var answer = []
var counter = 0
var code ={
	"a": "!", "b": "#", "c": "*", "d": "☼☼$",
	"e": "-", "f": "?", "g": "{", "h": "+",
	"i": "@", "j": "/", "k": "€", "l": "}",
	"m": "^", "n": "°", "o": "▲", "p": "♫[",
	"q": "☻☻%", "r": "æ", "s": ".", "t": "<",
	"u": "¥", "v": "&", "w": "↔", "x": "?",
	"y": "§", "z": "↕", "ñ": ":", " ": " ", "0": "[color=#E71D21]■[/color]",
	"1": "[color=#FFD600]■[/color]", "2": "[color=#1D86E7]■[/color]", "3": "[color=#1DE76E]■[/color]",
	"4": "[color=#761DE7]■[/color]", "5": "[color=#FF88DE]■[/color]", "6": "[color=#E77E1D]■[/color]",
	"7": "[color=#FFFFFF]■[/color]", "8": "[color=#000000]■[/color]", "9": "[color=#8F8F8F]■[/color]",
	"A": "!", "B": "#", "C": "*", "D": "$",
	"E": "-", "F": "?", "G": "{", "H": "+",
	"I": "@", "J": "/", "K": "€", "L": "}",
	"M": "^", "N": "°", "O": "▲", "P": "[",
	"Q": "%", "R": "æ", "S": ".", "T": "<",
	"U": "¥", "V": "&", "W": "↔", "X": "?",
	"Y": "§", "Z": "↕", "Ñ": ":"
}


func _ready(): 
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
	get_tree().change_scene("res://scenes/End.tscn")
#	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
	pass # Replace with function body.
