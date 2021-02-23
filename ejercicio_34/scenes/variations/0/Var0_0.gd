extends Node2D

var boxes = preload("res://scenes/Checkbox.tscn")

var spams = [2,3,6,7]
var spamNodes = []

func _ready():
	find_node("TitleLabel").text = global.title
	
	for i in range(8):
		var box = boxes.instance()
		if i in spams:
			box.spam = true
		spamNodes.append(box)
		find_node("GridContainer").add_child(box)

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
func _process(delta):
	global.timer -= delta
	$Time.text = "{mm}:{ss}".format({
		"ss":"%02.0f" % int(fmod(global.timer,60)),
		"mm":int(global.timer/60)
		})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true


func _on_Button_pressed():
	for node in spamNodes:
		if node.pressed == node.spam:
			global.correct_answers_no += 1
		else:
			global.incorrect_answers_no += 1
	get_tree().change_scene("res://scenes/End.tscn")
