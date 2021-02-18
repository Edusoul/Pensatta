extends Node2D

func _ready():
	get_node("Question").connect("next_scene",self,"_on_AnswerButton_pressed")

func _on_AnswerButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")

func _process(delta):
	global.timer -= delta
	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true
