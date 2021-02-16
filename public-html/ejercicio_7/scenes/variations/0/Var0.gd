extends Node2D

var answers = [];

func _ready():
	pass
	
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/End.tscn")
	
func _on_CheckBox_pressed_false():
	$Sprite2/Sprite4/CheckBox2.visible = false
	$Sprite2/Sprite4/CheckBox3.visible = false
	$Sprite2/Sprite4/CheckBox4.visible = false
	pass # Replace with function body.

func _on_CheckBox3_pressed_false1():
	$Sprite2/Sprite4/CheckBox2.visible = false
	$Sprite2/Sprite4/CheckBox.visible = false
	$Sprite2/Sprite4/CheckBox4.visible = false
	pass # Replace with function body.	

func _on_CheckBox2_pressed():
	$Sprite2/Sprite4/CheckBox.visible = false
	$Sprite2/Sprite4/CheckBox3.visible = false
	$Sprite2/Sprite4/CheckBox4.visible = false
	answers.append(1)
	global.answers_correct = answers
	pass # Replace with function body.
	
func _on_CheckBox4_pressed_false3():
	$Sprite2/Sprite4/CheckBox2.visible = false
	$Sprite2/Sprite4/CheckBox3.visible = false
	$Sprite2/Sprite4/CheckBox.visible = false
	pass # Replace with function body.

func _on_CheckBox_pressed():
	$Sprite3/Sprite5/CheckBox2.visible = false
	$Sprite3/Sprite5/CheckBox3.visible = false
	$Sprite3/Sprite5/CheckBox4.visible = false
	answers.append(2)
	global.answers_correct = answers
	pass # Replace with function body.
	
func _on_CheckBox2_pressed_f1():
	$Sprite3/Sprite5/CheckBox.visible = false
	$Sprite3/Sprite5/CheckBox3.visible = false
	$Sprite3/Sprite5/CheckBox4.visible = false
	pass # Replace with function body.	

func _on_CheckBox3_pressed_f2():
	$Sprite3/Sprite5/CheckBox2.visible = false
	$Sprite3/Sprite5/CheckBox.visible = false
	$Sprite3/Sprite5/CheckBox4.visible = false
	pass # Replace with function body.


func _on_CheckBox4_pressed_f3():
	$Sprite3/Sprite5/CheckBox2.visible = false
	$Sprite3/Sprite5/CheckBox3.visible = false
	$Sprite3/Sprite5/CheckBox.visible = false
	pass # Replace with function body.
	
func _on_CheckBox4_pressed():
	$Sprite4/Sprite6/CheckBox.visible = false
	$Sprite4/Sprite6/CheckBox2.visible = false
	$Sprite4/Sprite6/CheckBox3.visible = false
	answers.append(3)
	global.answers_correct = answers
	pass # Replace with function body.	


func _on_CheckBox3_pressed_fa2():
	$Sprite4/Sprite6/CheckBox.visible = false
	$Sprite4/Sprite6/CheckBox2.visible = false
	$Sprite4/Sprite6/CheckBox4.visible = false
	pass # Replace with function body.


func _on_CheckBox2_pressed_fa1():
	$Sprite4/Sprite6/CheckBox.visible = false
	$Sprite4/Sprite6/CheckBox4.visible = false
	$Sprite4/Sprite6/CheckBox3.visible = false
	pass # Replace with function body.


func _on_CheckBox_pressed_fa():
	$Sprite4/Sprite6/CheckBox4.visible = false
	$Sprite4/Sprite6/CheckBox2.visible = false
	$Sprite4/Sprite6/CheckBox3.visible = false
	pass # Replace with function body.
