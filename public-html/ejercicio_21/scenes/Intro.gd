extends Node2D

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/" + \
		str(global.variation_number) + "/Var" + str(global.variation_number) + \
		"_0.tscn")
