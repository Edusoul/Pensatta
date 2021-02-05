extends Node2D
var l1
var l2
var l3
# Called when the node enters the scene tree for the first time.
func _ready():
	l1 = $Label
	l2 = $Label2
	l3 = $Label3
	if global.answer_correctly == null:
		print("No marcaste ninguna casilla")
		l1.visible = true
	else:	
		for i in global.answered_correctly.size():
			print(global.answered_correctly[i])
			if global.answered_correctly.size() == 5:
				l3.visible = true
			elif global.answered_correctly.size() == 4:
				l1.visible = true
			elif global.answered_correctly.size() == 3:
				l1.visible = true
			elif global.answered_correctly.size() == 2:
				l1.visible = true
			elif global.answered_correctly.size() == 1:
				l1.visible = true			
			else:
				l2.visible = true		
		pass # Rel2lplace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
