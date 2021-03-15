extends Node2D

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


func _on_NextButton_pressed():
	_answers()
	print(global.correct_answers_no)
	print(global.incorrect_answers_no)
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")

func _answers():
	if $Sprite/Button11.visible == true:
		global.correct_answers_no.append(1)
	if $Sprite/Button12.visible == true:
		global.correct_answers_no.append(2)
	if $Sprite/Button13.visible == true:
		global.correct_answers_no.append(3)
	if $Sprite/Button14.visible == true:
		global.correct_answers_no.append(4)
	if $Sprite/Button16.visible == true:
		global.correct_answers_no.append(5)
	if $Sprite/Button17.visible == true:
		global.correct_answers_no.append(6)
	if $Sprite/Button18.visible == true:
		global.correct_answers_no.append(7)
		
	if $Sprite/Button15.visible == false:
		global.incorrect_answers_no.append(11)
	if $Sprite/Button19.visible == false:
		global.incorrect_answers_no.append(12)
	if $Sprite/Button20.visible == false:
		global.incorrect_answers_no.append(13)
	if $Sprite/Button11.visible == false:
		global.incorrect_answers_no.append(14)
	if $Sprite/Button12.visible == false:
		global.incorrect_answers_no.append(15)
	if $Sprite/Button13.visible == false:
		global.incorrect_answers_no.append(16)
	if $Sprite/Button14.visible == false:
		global.incorrect_answers_no.append(17)
	if $Sprite/Button16.visible == false:
		global.incorrect_answers_no.append(18)
	if $Sprite/Button17.visible == false:
		global.incorrect_answers_no.append(19)
	if $Sprite/Button18.visible == false:
		global.incorrect_answers_no.append(20)	
# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button_pressed():
	$Sprite/Button11.visible = true
	$Sprite/Button.visible = false
func _on_Button11_pressed():
	$Sprite/Button11.visible = false
	$Sprite/Button.visible = true
	
# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button2_pressed():
	$Sprite/Button12.visible = true
	$Sprite/Button2.visible = false
func _on_Button12_pressed():
	$Sprite/Button2.visible = true
	$Sprite/Button12.visible = false

# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button3_pressed():
	$Sprite/Button3.visible = false
	$Sprite/Button13.visible = true
func _on_Button13_pressed():
	$Sprite/Button13.visible = false
	$Sprite/Button3.visible = true

# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button4_pressed():
	$Sprite/Button4.visible = false
	$Sprite/Button14.visible = true
func _on_Button14_pressed():
	$Sprite/Button14.visible = false
	$Sprite/Button4.visible = true

# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button5_pressed():
	$Sprite/Button5.visible = false
	$Sprite/Button15.visible = true
func _on_Button15_pressed():
	$Sprite/Button15.visible = false
	$Sprite/Button5.visible = true

# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button6_pressed():
	$Sprite/Button6.visible = false
	$Sprite/Button16.visible = true
func _on_Button16_pressed():
	$Sprite/Button16.visible = false
	$Sprite/Button6.visible = true
	
# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button7_pressed():
	$Sprite/Button7.visible = false
	$Sprite/Button17.visible = true
func _on_Button17_pressed():
	$Sprite/Button17.visible = false
	$Sprite/Button7.visible = true
	
# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion	
func _on_Button8_pressed():
	$Sprite/Button8.visible = false
	$Sprite/Button18.visible = true
func _on_Button18_pressed():
	$Sprite/Button18.visible = false
	$Sprite/Button8.visible = true
	
# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion	
func _on_Button9_pressed():
	$Sprite/Button9.visible = false
	$Sprite/Button19.visible = true
func _on_Button19_pressed():
	$Sprite/Button19.visible = false
	$Sprite/Button9.visible = true

# Estas dos funciones dan visibilidad para sobreponerse un
# boton sobre el otro los dos botones estan en la misma 
# ubicacion
func _on_Button10_pressed():
	$Sprite/Button10.visible = false
	$Sprite/Button20.visible = true
func _on_Button20_pressed():
	$Sprite/Button20.visible = false
	$Sprite/Button10.visible = true
