extends Node2D


func _ready():
	pass



func _on_Button_pressed():
	$Node2D/Button2.visible = false
	$Node2D/Button3.visible = false
	$Node2D/Button4.visible = false
	$Node2D/Button5.visible = false
	$Node2D/Button5.visible = true
	$Node2D/Label.visible = false
	$Node2D/NextButton.visible = true
	if $Node2D/Button5.visible == true:
		global.answer_correctly.push_back(2)
		print(global.answer_correctly)


func _on_Button2_pressed():
	$Node2D/Button.visible = false
	$Node2D/Button3.visible = false
	$Node2D/Button4.visible = false
	$Node2D/Button5.visible = false
	$Node2D/Button6.visible = true
	$Node2D/Label.visible = false
	$Node2D/NextButton.visible = true
	if $Node2D/Button6.visible == true:
		global.answer_wrong.push_back(6)
		print(global.answer_wrong)


func _on_Button3_pressed():
	$Node2D/Button2.visible = false
	$Node2D/Button.visible = false
	$Node2D/Button4.visible = false
	$Node2D/Button5.visible = false
	$Node2D/Button7.visible = true
	$Node2D/Label.visible = false
	$Node2D/NextButton.visible = true
	if $Node2D/Button7.visible == true:
		global.answer_wrong.push_back(6)
		print(global.answer_wrong)


func _on_Button4_pressed():
	$Node2D/Button2.visible = false
	$Node2D/Button3.visible = false
	$Node2D/Button.visible = false
	$Node2D/Button5.visible = false
	$Node2D/Button8.visible = true
	$Node2D/Label.visible = false
	$Node2D/NextButton.visible = true
	if $Node2D/Button8.visible == true:
		global.answer_wrong.push_back(6)
		print(global.answer_wrong)


func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/Escena3.tscn")
