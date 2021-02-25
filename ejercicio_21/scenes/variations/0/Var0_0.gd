extends Node2D

export (PackedScene) var Question

var questions = [
	"¿Qué aplicaciones en la imagen están en el teléfono desde el primer día?",
	"¿Cómo se hace para instalar las que no vienen en el teléfono?",
	"Es posible desintalar las aplicaciones del teléfono.",
	"Es necesario tener instaladas estas aplicaciones para que un teléfono funcione."
]

var options1 = ["Todas las aplicaciones vienen instaladas en el teléfono",
				"Se deben instalar únicamente por medio de un computador portátil",
				"Existe una tienda de aplicaciones en el teléfono para realizarlo",
				"Se puede transferir o descargar un archivo tipo APK para instalar una aplicación en el teléfono"] 

var options = [["WhatsApp","Instagram","YouTube","Google Maps"],
			options1,
			["Verdadero","Falso"],
			["Verdadero","Falso"]]
var correct = [[2,3],[2,3],[0],[1]]

func _ready():
	var quest = Question.instance()
	quest.question = questions[global.scene]
	quest.options = options[global.scene]
	quest.correctIndex = correct[global.scene]
	quest.rect_global_position = Vector2(100,234)
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
	global.timer -= delta
	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true
