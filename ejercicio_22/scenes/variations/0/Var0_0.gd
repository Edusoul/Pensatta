extends Node2D

export (PackedScene) var Question

var questions = [
	"Se requiere realizar una base de datos ordenada en tablas",
	"Se requiere escribir un informe con imágenes y gráficas",
	"Se requiere tomar notas por medio de teclado o lápiz óptico",
	"Se requiere realizar una animación con animaciones, texto y gráficas"
]

var options = ["One Note","Word","Power Point","Excel"]
var correct = [[3],[1],[0],[2]]

func _ready():
	var quest = Question.instance()
	quest.question = questions[global.scene]
	quest.options = options
	quest.correctIndex = correct[global.scene]
	quest.rect_global_position = Vector2(468,234)
	quest.connect("next",self,"_on_NextButton_pressed")
	self.add_child(quest)
	
	find_node("TitleLabel").text = global.title
	get_node("Answers").text = \
	"Respuestas correctas: {a} \nRespuestas incorrectas: {b}".format(
		{"a":global.correct_answers_no,
		 "b":global.incorrect_answers_no}
	)

func _on_NextButton_pressed():
	global.scene += 1
	if global.scene == 4:
		get_tree().change_scene("res://scenes/End.tscn")
	else:
		get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
	
func _process(delta):
	find_node("TimeSprite").show()	
	global.timer -= delta
	find_node("Time").text = "{mm}:{ss}".format({
		"ss":"%02.0f" % int(fmod(global.timer,60)),
		"mm":int(global.timer/60)
		})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true
