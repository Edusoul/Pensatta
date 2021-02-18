extends Control

func _ready():
#	randomize()
#	var options = ["res://sc1.tscn", "res://sc2.tscn"]
#	var rand_index:int = randi() % options.size()
#
#	if options[rand_index]:
#		print (options[rand_index])
	pass	
func _random_scene():
	randomize()
	
	var scene_list = [
		"res://scenes/variations/0/scene2.tscn",
		"res://scenes/variations/0/scene4.tscn",
		"res://scenes/variations/0/scene3.tscn",
		"res://scenes/variations/0/scene6.tscn",
		"res://scenes/variations/0/scene7.tscn"
	]
	return scene_list[int(rand_range(-1, scene_list.size()))]
		
		

func _on_Button2_abierto():
	global.answers_wrong.append(12)
	if global.answers.size() == 5 or global.answers_wrong.size() == 5:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 4 and global.answers_wrong.size() == 1:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 3 and global.answers_wrong.size() == 2:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 2 and global.answers_wrong.size() == 3:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 1 and global.answers_wrong.size() == 4:
		get_tree().change_scene("res://scenes/End.tscn")
	else:	
		get_tree().change_scene(_random_scene())


func _on_Button_cerrado():
	global.answers.append(5)
	if global.answers.size() == 5 or global.answers_wrong.size() == 5:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 4 and global.answers_wrong.size() == 1:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 3 and global.answers_wrong.size() == 2:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 2 and global.answers_wrong.size() == 3:
		get_tree().change_scene("res://scenes/End.tscn")
	elif global.answers.size() == 1 and global.answers_wrong.size() == 4:
		get_tree().change_scene("res://scenes/End.tscn")
	else:	
		get_tree().change_scene(_random_scene())
