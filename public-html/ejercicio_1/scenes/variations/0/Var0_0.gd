extends Node2D

onready var outline_yellow_shader = \
	preload("res://assets/shaders/outline_yellow.shader");
onready var outline_blue_shader = \
	preload("res://assets/shaders/outline_blue.shader");
	
var last_part = ""
	
var parts = {
	"Board": {
		"name": "TARJETA MADRE",
		"description": "También conocida como placa base, es una tarjeta de circuito impreso a la que se conectan los componentes que constituyen la computadora. Es una parte fundamental para montar cualquier computadora personal de escritorio o portátil o algún dispositivo."
	},
	"CDROM": {
		"name": "LECTOR DE CD",
		"description": "Es un dispositivo electrónico que permite la lectura de CDs mediante el empleo de un rayo láser y la posterior transformación de este en impulsos eléctricos que la computadora interpreta, escritos por grabadoras de CD."
	},
	"CPU": {
		"name": "CPU",
		"description": "La Unidad Central de Procesamiento (conocida por las siglas CPU, del inglés: Central Processing Unit), es el hardware dentro de un ordenador cuyo trabajo es interpretar las instrucciones de un programa informático mediante la realización de las operaciones básicas aritméticas, lógicas y externas (provenientes de la unidad de entrada/salida)."
	},
	"GPU": {
		"name": "TARJETA GRÁFICA",
		"description": "Es una tarjeta de expansión de la placa base del ordenador que se encarga de procesar los datos provenientes de la unidad central de procesamiento (CPU) y transformarlos en información comprensible y representable en el dispositivo de salida (por ejemplo: monitor, televisor o proyector)."
	},
	"HardDrive": {
		"name": "DISCO DURO",
		"description": "Es un componente informático que sirve para almacenar de forma permanente tus datos. Esto quiere decir, que los datos no se borran cuando se apaga la unidad como pasa en los almacenados por la memoria RAM."
	},
	"InputDevices": {
		"name": "ELEMENTOS DE ENTRADA",
		"description": "Son todos aquellos periféricos que se pueden conectar al computador y permiten el ingreso de información por parte del usuario. El teclado y ratón son los más usados, y permiten el ingreso de texto así como el movimiento del puntero virtual."
	},
	"OutputDevice": {
		"name": "ELEMENTOS DE SALIDA",
		"description": "Son aquellos periféricos mediante los cuales el usuario recibe información del computador. El monitor es el más usado de todos, y permite la visualización de todos los procesos ejecutados por el usuario."
	},
	"RAM": {
		"name": "MEMORIA RAM",
		"description": "Es la memoria principal de un dispositivo, es donde se almacenan de forma temporal los datos de los programas que estás utilizando en este momento. Sus siglas significan Random Access Memory, lo que traducido al español sería Memoria de Acceso Aleatorio."
	},
}
	
var zones_entered = {
	"Board": false,
	"CDROM": false,
	"CPU": false,
	"GPU": false,
	"HardDrive": false,
	"InputDevices": false,
	"OutputDevice": false,
	"RAM": false,
}
var zones_clicked = {
	"Board": false,
	"CDROM": false,
	"CPU": false,
	"GPU": false,
	"HardDrive": false,
	"InputDevices": false,
	"OutputDevice": false,
	"RAM": false,
}

# Called when the node enters the scene tree for the first time.
func _ready():
	$NextButton.visible = false
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var entered_zone = false
		var all_zones_clicked = true
		for zone in zones_entered.keys():
			if zones_entered[zone]:
				entered_zone = true
				if last_part:
					$Computer.get_node(last_part).get_node(last_part).material. \
						shader = null
					$Computer.get_node(last_part).get_node(last_part).modulate.a = 0.5
				$Computer.get_node(zone).get_node(zone).material.shader = \
					outline_blue_shader
				$DescRect/Name.text = parts[zone]["name"]
				$DescRect/Description.text = parts[zone]["description"]
				last_part = zone
				zones_entered[zone] = false
				zones_clicked[zone] = true
			if !zones_clicked[zone] and all_zones_clicked:
				all_zones_clicked = false
		if !entered_zone and last_part:
			$Computer.get_node(last_part).get_node(last_part).modulate.a = 0.5
			$Computer.get_node(last_part).get_node(last_part).material. \
						shader = null
			last_part = ""
			if all_zones_clicked:
				$DescRect/Name.text = "Avanza"
				$DescRect/Description.text = "Continúa a la siguiente parte."
			else:
				$DescRect/Name.text = "Clickea los elementos"
				$DescRect/Description.text = "Mira sus descripciones y dale a siguiente."
			
		
		if all_zones_clicked:
			$NextButton.visible = true

func _on_Board_mouse_entered():
	entered_element("Board")

func _on_Board_mouse_exited():
	exited_element("Board")

func _on_CDROM_mouse_entered():
	entered_element("CDROM")

func _on_CDROM_mouse_exited():
	exited_element("CDROM")

func _on_CPU_mouse_entered():
	entered_element("CPU")

func _on_CPU_mouse_exited():
	exited_element("CPU")

func _on_GPU_mouse_entered():
	entered_element("GPU")

func _on_GPU_mouse_exited():
	exited_element("GPU")

func _on_HardDrive_mouse_entered():
	entered_element("HardDrive")

func _on_HardDrive_mouse_exited():
	exited_element("HardDrive")

func _on_InputDevices_mouse_entered():
	entered_element("InputDevices")

func _on_InputDevices_mouse_exited():
	exited_element("InputDevices")

func _on_OutputDevice_mouse_entered():
	entered_element("OutputDevice")


func _on_OutputDevice_mouse_exited():
	exited_element("OutputDevice")

func _on_RAM_mouse_entered():
	entered_element("RAM")

func _on_RAM_mouse_exited():
	exited_element("RAM")

func entered_element(name):
	if last_part != name:
		zones_entered[name] = true
		$Computer.get_node(name).get_node(name).material.shader = \
			outline_yellow_shader
			
func exited_element(name):
	if last_part != name:
		zones_entered[name] = false
		$Computer.get_node(name).get_node(name).material.shader = null
		
func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_1.tscn")
