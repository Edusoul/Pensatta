extends Control



func _ready():
#	randomize()
#	var options = ["res://sc1.tscn", "res://sc2.tscn"]
#	var rand_index:int = randi() % options.size()
#
#	if options[rand_index]:
#		print (options[rand_index])
	pass	
func random_scene():
	randomize()
	
	var scenes_list = [
		"res://sc1.tscn",
		"res://sc2.tscn"
	]
	return scenes_list[int(rand_range(-1, scenes_list.size()))]
		
		
func _on_Button_pressed():
	get_tree().change_scene(random_scene())
	pass # Replace with function body.
