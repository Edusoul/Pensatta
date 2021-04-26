extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


#func _on_NextButton_pressed():
#	global.scene += 1
#	if global.scene <= global.last_scene:
#			get_tree().change_scene(
#				"res://scenes/variations/0/Var0_{s}.tscn".format(
#					{"s":global.scene}))
#	else:
#		get_tree().change_scene("res://scenes/End.tscn")
# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
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
		global.correct_answers_no = phase
func _physics_process(delta):
#	print(phase)
#	_convertir()
	pass

var phase=[]

func _on_Button_pressed():
	phase.push_back("A")
	print(phase)
	_encode()
	
func _on_Button4_pressed():
	phase.push_back("B")
	print(phase)
	_encode()
## Boton para borrar	
func _on_Button53_pressed():
	phase.pop_back()
	print(phase)
	_encode()
	
func _on_Button6_pressed():
	phase.push_back("C")
	print(phase)
	_encode()
# Con esta funcion convertimos en una cadena de texto 
# el arreglo que tenemos de los datos que ingresa el usuario

func _encode():
	var splitted = phase
	var joined = PoolStringArray(splitted).join("")
	print(str(joined))
	$RichTextLabel.bbcode_text = str(joined)
	
	


func _on_Button7_pressed():
	phase.push_back("D")
	print(phase)
	_encode()


func _on_Button17_pressed():
	phase.push_back("E")
	print(phase)
	_encode()	

func _on_Button9_pressed():
	phase.push_back("F")
	print(phase)
	_encode()	


func _on_Button12_pressed():
	phase.push_back("G")
	print(phase)
	_encode()


func _on_Button13_pressed():
	phase.push_back("H")
	print(phase)
	_encode()


func _on_Button16_pressed():
	phase.push_back("I")
	print(phase)
	_encode()

# Espacio en blanco
func _on_Button54_pressed():
	phase.push_back(" ")
	print(phase)
	_encode()	


func _on_Button19_pressed():
	phase.push_back("J")
	print(phase)
	_encode()


func _on_Button23_pressed():
	phase.push_back("K")
	print(phase)
	_encode()


func _on_Button24_pressed():
	phase.push_back("L")
	print(phase)
	_encode()


func _on_Button25_pressed():
	phase.push_back("M")
	print(phase)
	_encode()


func _on_Button26_pressed():
	phase.push_back("N")
	print(phase)
	_encode()	


func _on_Button27_pressed():
	phase.push_back("O")
	print(phase)
	_encode()	


func _on_Button28_pressed():
	phase.push_back("P")
	print(phase)
	_encode()	


func _on_Button29_pressed():
	phase.push_back("Q")
	print(phase)
	_encode()


func _on_Button30_pressed():
	phase.push_back("R")
	print(phase)
	_encode()


func _on_Button21_pressed():
	phase.push_back("S")
	print(phase)
	_encode()


func _on_Button31_pressed():
	phase.push_back("T")
	print(phase)
	_encode()	


func _on_Button32_pressed():
	phase.push_back("U")
	print(phase)
	_encode()	


func _on_Button33_pressed():
	phase.push_back("V")
	print(phase)
	_encode()	


func _on_Button34_pressed():
	phase.push_back("W")
	print(phase)
	_encode()	


func _on_Button35_pressed():
	phase.push_back("X")
	print(phase)
	_encode()	


func _on_Button36_pressed():
	phase.push_back("Y")
	print(phase)
	_encode()	


func _on_Button37_pressed():
	phase.push_back("Z")
	print(phase)
	_encode()	
