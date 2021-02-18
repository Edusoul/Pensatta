extends Node2D

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("Question").connect("next_scene",self,"_on_NextButton_pressed")
	get_node("Answers").text = \
	"Respuestas correctas: {a} \nRespuestas incorrectas: {b}".format(
		{"a":global.correct_answers_no,
		 "b":global.incorrect_answers_no}
	)

func _on_NextButton_pressed():
	global.scene += 1
	get_tree().change_scene("res://scenes/variations/0/Var0_{s}.tscn".format({"s":global.scene}))
	
func _process(delta):
	global.timer -= delta
	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true
