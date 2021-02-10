extends Control

func _ready():
	if global.answers.size() == 5 and global.answers_wrong.size() == 0:
		$Label.visible = true
	elif global.answers.size() == 4 and global.answers_wrong.size() == 1:
		$Label2.visible = true
	elif global.answers.size() == 3 and global.answers_wrong.size() == 2:
		$Label3.visible = true
	elif global.answers.size() == 2 and global.answers_wrong.size() == 3:
		$Label4.visible = true
	elif global.answers.size() == 1 and global.answers_wrong.size() == 4:
		$Label5.visible = true
	elif global.answers.size() == 0 and global.answers_wrong.size() == 5:
		$Label6.visible = true
