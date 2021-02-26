extends Node2D

var question = preload("res://scenes/QuestionNode.tscn")

var options = [
	[	"Ejecutar la siguiente acción si y solo si J es mayor a 3",
		"Ejecutar la siguiente acción si y solo si J es igual a 3",
		"Ejecutar la siguiente acción si y solo si J es mayor o igual a 3"],
	[	"Ejecutar la siguiente acción si y solo si F es menor a 3",
		"Ejecutar la siguiente acción si y solo si F es igual a 3",
		"Ejecutar la siguiente acción si y solo si F es menor o igual a 3"],
	[	"Ejecutar la siguiente acción si y solo si P es mayor a S",
		"Ejecutar la siguiente acción si y solo si P es igual S",
		"Ejecutar la siguiente acción si y solo si P es menor que S"]
]

var corrects = [[1],[2],[0]]

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	
	var inst = question.instance()
	inst.question = "Condicional "+str(global.scene + 1)
	inst.options = options[global.scene]
	inst.correctIndex = corrects[global.scene]
	inst.connect("Next",self,"_on_NextButton_pressed")
	find_node("Holder").add_child(inst)
	
	for h in range(3):
		find_node("Condicional"+str(h+1)).hide()
	find_node("Condicional"+str(global.scene+1)).show()


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
		find_node("Holder").get_children()[0].queue_free()
		_ready()
	else:
		get_tree().change_scene("res://scenes/End.tscn")

# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
#func _process(delta):
#	find_node("TimeSprite").show()	
#	global.timer -= delta
#	find_node("Time").text = "{mm}:{ss}".format({
#		"ss":"%02.0f" % int(fmod(global.timer,60)),
#		"mm":int(global.timer/60)
#		})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
