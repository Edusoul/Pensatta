extends Node2D

func _ready():
	pass

func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/variations/" + \
		str(global.variation_number) + "/Var" + str(global.variation_number) + \
		".tscn")

