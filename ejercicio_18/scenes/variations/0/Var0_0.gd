extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	print($Draggable3.position)
	
	

func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")


func _on_Area2D_body_entered(body):
	if body.get_name() == "Dulce":
		body.global_position = Vector2(118, 459)
		
func _physics_process(delta):
## Con este condicional se hace visible el lector de calidad del dulce
	if Input.is_action_just_pressed("ui_accept") and $Sprite4.visible == true:
		$Lector.visible = true
		$Dulce.visible = true
		$bandaMovil.visible = true
		$Dulce2.visible = false
		$bandaMovil2.visible = false
## Con este condicional se reinician los objetos en su posicion de origen
	if $Dulce.position == Vector2(118, 459):
		$Lector.position = Vector2(312.509003, 168.416)
		global.move = Vector2()
		global.moveBanda = Vector2()
		$bandaMovil.position = Vector2(0, 0)
## Con este condicional debo mostrar si el dulce es aprobado o rechazado
	if $Dulce.position == Vector2(118, 459):
		$SprArea/SprGreen.visible = true
		
## Con esta funcion logro mostrar los controles de calidad de la maquina
## con los otros assets ya podria intercambir los colores de cada revision

	if global.moveBanda != Vector2():
		$SprArea/SprGreen.visible = false	
		
## Esta parte del codigo me hace aparecer el bucle fijo en la pantalla
	
	if $Draggable.position < Vector2(770, 336):
		$Draggable.visible = false
		$SprBucle1.visible = true

## Esta parte me hace aparecer una de las piezas dentro del 
## bucle la pieza es uno de los arrastrables
		
	if	$Draggable2.position < Vector2(770, 336):
		$Draggable2.visible = false
		$SprBucle1.visible = true
		$SpriteBucle1.visible = true

	if	$Draggable3.position < Vector2(770, 336):
		$Draggable3.visible = false
		$SprBucle1.visible = true
		$SpriteBucle2.visible = true
		
	if $SprBucle1.visible == true and $SpriteBucle1.visible == true and $Draggable3.position < Vector2(770, 336):
		$Bucle2.visible = true
		$Sprite3.visible = true
		$Sprite5.visible = true
		$Sprite4.visible = true
		$Draggable3.visible = false
		
func _on_Button_pressed():
	global.move = Vector2()
	global.moveBanda = Vector2()
	get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
