extends Node2D
var answer_1
var answer_2
var answer_3
var answer_4
var answer_5
var answer_6

func _ready():
	answer_1 = $Label
	answer_2 = $Label2
	answer_3 = $Label3
	answer_4 = $Label4
	answer_5 = $Label5
	
	
	if global.answer_correctly == []:
		answer_1.visible = true
	else:	
		for i in global.answer_correctly.size():
			if global.answer_correctly.size() == 4:
				answer_2.visible = true
			elif global.answer_correctly.size() == 3:
				answer_3.visible = true
			elif global.answer_correctly.size() == 2:
				answer_4.visible = true
			elif global.answer_correctly.size() == 1:
				answer_5.visible = true			
			
#func _ready():
#	pass
 

