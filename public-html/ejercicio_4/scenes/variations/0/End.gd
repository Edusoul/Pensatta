extends Node2D

var answer_1
var answer_2
var answer_3
var answer_4
var answer_5
var answer_6

func _ready():
	answer_1 = $Area2D/Label
	answer_2 = $Area2D/Label2
	answer_3 = $Area2D/Label3
	answer_4 = $Area2D/Label4
	answer_5 = $Area2D/Label5
	answer_6 = $Area2D/Label6
	
	if global.answered_correctly == []:
		answer_5.visible = true
	else:	
		for i in global.answered_correctly.size():
			print(global.answered_correctly[i])
			if global.answered_correctly.size() == 4:
				answer_1.visible = true
			elif global.answered_correctly.size() == 3:
				answer_2.visible = true
			elif global.answered_correctly.size() == 2:
				answer_3.visible = true
			elif global.answered_correctly.size() == 1:
				answer_4.visible = true			
			else:
				answer_6.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0.tscn")
