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




func _on_LogicOperator_pressed():
	$Container/Result.visible = true
	$Sprite2/Label.visible = true
	$Sprite2/OpeLogico.visible = true
	if $Sprite2/OpeLogico.visible == true and $Sprite2/Label.visible == true and $Sprite2/OpeLogico2.visible == true and $Sprite2/OpeLogico3.visible == true and $Sprite2/OpeLogico4.visible == true:
		$Sprite2/OpeLogico5.visible = true


func _on_VariableOne_pressed():
	$Sprite2/OpeLogico2.visible = true
	if $Sprite2/OpeLogico.visible == true and $Sprite2/Label.visible == true and $Sprite2/OpeLogico2.visible == true and $Sprite2/OpeLogico3.visible == true and $Sprite2/OpeLogico4.visible == true:
		$Sprite2/OpeLogico5.visible = true

func _on_VariableTwo_pressed():
	$Sprite2/OpeLogico3.visible = true
	if $Sprite2/OpeLogico.visible == true and $Sprite2/Label.visible == true and $Sprite2/OpeLogico2.visible == true and $Sprite2/OpeLogico3.visible == true and $Sprite2/OpeLogico4.visible == true:
		$Sprite2/OpeLogico5.visible = true

func _on_Result_pressed():
	$Sprite2/OpeLogico4.visible = true
	if $Sprite2/OpeLogico.visible == true and $Sprite2/Label.visible == true and $Sprite2/OpeLogico2.visible == true and $Sprite2/OpeLogico3.visible == true and $Sprite2/OpeLogico4.visible == true:
		$Sprite2/OpeLogico5.visible = true
