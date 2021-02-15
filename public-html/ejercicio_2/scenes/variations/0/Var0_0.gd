extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var question_no = 0
var correct_answers = [4, 2, 5, 1, 3]
var answers_registered = []
var checkboxes = []
var photoshop_texture = load("res://assets/img/variations/0/Photoshop.png")
var google_texture = load("res://assets/img/variations/0/Google.png")
var excel_texture = load("res://assets/img/variations/0/Excel.png")
var youtube_texture = load("res://assets/img/variations/0/YouTube.png")
var word_texture = load("res://assets/img/variations/0/Word.png")
var textures = [photoshop_texture, google_texture, excel_texture, \
				youtube_texture, word_texture]

# Called when the node enters the scene tree for the first time.
func _ready():
	checkboxes = $CheckRect.get_children()
	$NextButton.visible = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_NextButton_pressed():
	$NextButton.visible = false
	question_no += 1
	for i in range(checkboxes.size()):
		if checkboxes[i].pressed:
			answers_registered.append(i + 1)
			checkboxes[i].pressed = false
	
	if question_no == correct_answers.size():
		for i in correct_answers.size():
			if correct_answers[i] == answers_registered[i]:
				global.correct_answers_no += 1
			else:
				global.incorrect_answers_no += 1
		get_tree().change_scene("res://scenes/End.tscn")
	else:
		$ProgramSprite.texture = textures[question_no]
	


func _on_CheckBox1_pressed():
	if !$NextButton.visible:
		$NextButton.visible = true
	if !$CheckRect/CheckBox1.pressed:
		$CheckRect/CheckBox1.pressed = true
	for i in range(checkboxes.size()):
		if i + 1 != 1:
			checkboxes[i].pressed = false


func _on_CheckBox2_pressed():
	if !$NextButton.visible:
		$NextButton.visible = true
	if !$CheckRect/CheckBox2.pressed:
		$CheckRect/CheckBox2.pressed = true
	for i in range(checkboxes.size()): 
		if i + 1 != 2:
			checkboxes[i].pressed = false


func _on_CheckBox3_pressed():
	if !$NextButton.visible:
		$NextButton.visible = true
	if !$CheckRect/CheckBox3.pressed:
		$CheckRect/CheckBox3.pressed = true
	for i in range(checkboxes.size()):
		if i + 1 != 3:
			checkboxes[i].pressed = false


func _on_CheckBox4_pressed():
	if !$NextButton.visible:
		$NextButton.visible = true
	if !$CheckRect/CheckBox4.pressed:
		$CheckRect/CheckBox4.pressed = true
	for i in range(checkboxes.size()):
		if i + 1 != 4:
			checkboxes[i].pressed = false


func _on_CheckBox5_pressed():
	if !$NextButton.visible:
		$NextButton.visible = true
	if !$CheckRect/CheckBox5.pressed:
		$CheckRect/CheckBox5.pressed = true
	for i in range(checkboxes.size()):
		if i + 1 != 5:
			checkboxes[i].pressed = false
