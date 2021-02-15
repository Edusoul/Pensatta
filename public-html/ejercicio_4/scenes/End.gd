extends Control

func _ready():
	pass

#func _ready():
#	if global.answers.size() == 5 and global.answers_wrong.size() == 0:
#		$Sprite/Label.visible = true
#	elif global.answers.size() == 4 and global.answers_wrong.size() == 1:
#		$Sprite/Label2.visible = true
#	elif global.answers.size() == 3 and global.answers_wrong.size() == 2:
#		$Sprite/Label3.visible = true
#	elif global.answers.size() == 2 and global.answers_wrong.size() == 3:
#		$Sprite/Label4.visible = true
#	elif global.answers.size() == 1 and global.answers_wrong.size() == 4:
#		$Sprite/Label5.visible = true
#	elif global.answers.size() == 0 and global.answers_wrong.size() == 5:
#		$Sprite/Label6.visible = true

func _on_Button_pressed():
	JavaScript.eval("window.top.postMessage('finished_problem', '*')")
