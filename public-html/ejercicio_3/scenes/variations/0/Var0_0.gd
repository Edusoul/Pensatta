extends Node2D

var wheel_spinning = false
var wheel_spun = false
var wheel_rotation_vel = 0
var wheel_rotation_acc = -120
var questions = [
	{
		"question": "Marque un sistema operativo para computador y uno para móviles",
		"answers": ["Lime", "Ubuntu", "iOS", "Cookies"],
		"right_answers": [1, 2]
	},
	{
		"question": "¿Cuáles son algunas características de un sistema operativo para computador?",
		"answers": ["Conveniencia", "Conciencia", "Administración de hardware", "Consistencia", "Eficiencia", "Resistencia"],
		"right_answers": [0, 2, 4]
	},
	{
		"question": "¿Cuáles son algunos de los componentes de un sistema operativo móvil?",
		"answers": ["Kernel", "Apple", "Transistores", "Middleware", "Resistores", "Entorno"],
		"right_answers": [0, 3, 5]
	},
	{
		"question": "¿Qué aplicaciones podría tener un sistema operativo?",
		"answers": ["Completar tareas de cálculo", "Descubrir nuevos medicamentos", "Representar información gráfica tridimensional", "Sintetizar audio", "Simulación de eventos", "Controlar dispositivos"],
		"right_answers": [0, 1, 2, 3, 4, 5, 6]
	},
	{
		"question": "¿Cuáles son algunos de los componentes de un sistema operativo móvil?",
		"answers": ["Kernel", "Apple", "Transistores", "Middleware", "Resistores", "Entorno"],
		"right_answers": [0, 3, 5]
	},
]
var final_question

# Called when the node enters the scene tree for the first time.
func _ready():
	$NextButton.visible = false
	for child in $CheckRect.get_children():
		child.visible = false
	
func _physics_process(delta):
	if wheel_spinning:
		$SpinWheel/Wheel.rotation_degrees += wheel_rotation_vel * delta
		wheel_rotation_vel += wheel_rotation_acc*delta
		if wheel_rotation_vel <= 0:
			wheel_spinning = false
			var final_rotation = int(floor($SpinWheel/Wheel.rotation_degrees)) \
				 % 360
			if final_rotation < 72:
				final_question = 0
			elif final_rotation < 144:
				final_question = 4
			elif final_rotation < 216:
				final_question = 3
			elif final_rotation < 288:
				final_question = 2
			elif final_rotation < 360:
				final_question = 1
		
			$NextButton.visible = true
			$Question.text = questions[final_question]["question"]
			
			for i in range($CheckRect.get_children().size()):
				if i < questions[final_question]["answers"].size():
					$CheckRect.get_children()[i].text = \
						questions[final_question]["answers"][i]
					$CheckRect.get_children()[i].visible = true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_SpinButton_pressed():
	if !final_question:
		randomize()
		wheel_spinning = true
		
		wheel_rotation_vel = 360 + randf()*360

func _on_NextButton_pressed():
	for i in range($CheckRect.get_children().size()):
		var checkbox = $CheckRect.get_children()[i]
		if checkbox.visible:
			if i in questions[final_question]["right_answers"]:
				if checkbox.pressed:
					global.correct_answers_no += 1
			else:
				if checkbox.pressed:
					global.incorrect_answers_no += 1
	global.complete_correct_answers = questions[final_question] \
		["right_answers"].size()
	get_tree().change_scene("res://scenes/End.tscn")
