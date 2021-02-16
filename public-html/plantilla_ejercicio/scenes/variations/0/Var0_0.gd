extends Node2D

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")


#DESCOMENTAR CON CTRL+K SI SE REQUIERE UN TIMER GLOBAL
#LA ESCENA TIENE QUE TENER UN NODO $Time
#func _process(delta):
#	global.timer -= delta
#	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
