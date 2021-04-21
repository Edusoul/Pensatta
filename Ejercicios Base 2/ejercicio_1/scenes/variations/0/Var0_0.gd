extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")


func _on_Button_pressed():
	$Button2.visible = false
	$Button3.visible = false
	$Button4.visible = false
	$Button5.visible = false
	$Button5.visible = true
	$Label.visible = false
	$NextButton2.visible = true
	if $Button5.visible == true:
		global.answer_wrong.push_back(5)
		print(global.answer_wrong)

func _on_Button2_pressed():
	$Button.visible = false
	$Button3.visible = false
	$Button4.visible = false
	$Button5.visible = false
	$Button6.visible = true
	$Label.visible = false
	$NextButton2.visible = true
	if $Button6.visible == true:
		global.answer_wrong.push_back(5)
		print(global.answer_wrong)

func _on_Button3_pressed():
	$Button2.visible = false
	$Button.visible = false
	$Button4.visible = false
	$Button5.visible = false
	$Button7.visible = true
	$Label.visible = false
	$NextButton2.visible = true
	if $Button7.visible == true:
		global.answer_correctly.push_back(1)
		print(global.answer_correctly)
func _on_Button4_pressed():
	$Button2.visible = false
	$Button3.visible = false
	$Button.visible = false
	$Button5.visible = false
	$Button8.visible = true
	$Label.visible = false
	$NextButton2.visible = true
	if $Button8.visible == true:
		global.answer_wrong.push_back(5)
		print(global.answer_wrong)


func _on_NextButton2_pressed():
	get_tree().change_scene("res://scenes/Escena2.tscn")
