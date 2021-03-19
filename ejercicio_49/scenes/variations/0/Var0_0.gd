extends Node2D

var next_step = true
var cooldown = 40
var timer

func _ready():
#	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	timer = Timer.new()
	add_child(timer)
	timer.set_one_shot(true)
	timer.set_wait_time(cooldown)
	timer.connect("timeout", self, "_cooldown_end")
	print($SpritePath/Rat.position)


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")


# Funciones para la primera flecha de direccion bajista
func _pos_down_one():
	if $Draggable.position <= Vector2(154, 727):
		$Draggable.position == Vector2(152, 725)
		$SprDown.visible = true
		$Draggable.visible = false
		$Draggable5.visible = true
#		if $SprDown.visible == true:
#			$SpritePath/Rat.position = Vector2(0,74)
func _pos_down_two():
	if $Draggable5.position <= Vector2(238, 727):
		$Draggable5.position == Vector2(236, 725)
		$SprDown2.visible = true
		$Draggable5.visible = false
#		if $SprDown2.visible == true:
#			$SpritePath/Rat.position = Vector2(0,148)	
	
# Funciones para la flecha de direccion hacia la derecha
func _pos_rigth_one():
	if $Draggable4.position <=Vector2(322,727):
		$Draggable4.position == Vector2(320, 725)
		$SprRigth.visible = true
		$Draggable4.visible = false
		$Draggable6.visible = true
#		if $SprRigth.visible == true:
#			$SpritePath/Rat.position = Vector2(74,148)
func _pos_rigth_two():
	if $Draggable6.position <= Vector2(406, 727):
		$Draggable6.position == Vector2(404, 725)
		$SprRigth2.visible = true
		$Draggable6.visible = false
		$Draggable8.visible = true
#		if $SprRigth2.visible == true:
#			$SpritePath/Rat.position = Vector2(148,148)
func _pos_rigth_three():
	if $Draggable8.position <=Vector2(658,727):
		$Draggable8.position == Vector2(656, 725)
		$SprRigth3.visible = true
		$Draggable8.visible = false
		$Draggable9.visible = true
#		if $SprRigth3.visible == true:
#			$SpritePath/Rat.position = Vector2(222,0)
func _pos_rigth_four():
	if $Draggable9.position <= Vector2(762, 727):
		$Draggable9.position == Vector2(760, 725)
		$SprRigth4.visible = true
		$Draggable9.visible = false
		$Draggable2.visible = false
		$NextButton2.visible = true
#		if $SprRigth3.visible == true:
#			$SpritePath/Rat.position = Vector2(296,0)

# Funciones para la flecha arriba
func _pos_up_one()		:
	if $Draggable3.position <= Vector2(490, 727):
		$Draggable3.position == Vector2(488, 725)
		$sprUp.visible = true
		$Draggable3.visible = false
		$Draggable7.visible = true
#		if $sprUp.visible == true:
#			$SpritePath/Rat.position = Vector2(148,74)
func _pos_up_two():
	if $Draggable7.position <= Vector2(574, 727):
		$Draggable.position == Vector2(572, 725)
		$sprUp2.visible = true
		$Draggable7.visible = false
#		if $sprUp2.visible == true:
#			$SpritePath/Rat.position = Vector2(148,0)

func _step():
		if $SprDown.visible == true and next_step:
			$SpritePath/Rat.position = Vector2(0,74)
			timer.start(true)
			next_step = false
func _step2():
		if $SprDown2.visible == true and next_step:
			$SpritePath/Rat.position = Vector2(0,148)
func _step3():
		if $SprRigth.visible == true:
			$SpritePath/Rat.position = Vector2(74,148)
		if $SprRigth2.visible == true:
			$SpritePath/Rat.position = Vector2(148,148)
		if $sprUp.visible == true:
			$SpritePath/Rat.position = Vector2(148,74)
		if $sprUp2.visible == true:
			$SpritePath/Rat.position = Vector2(148,0)
		if $SprRigth3.visible == true:
			$SpritePath/Rat.position = Vector2(222,0)
		if $SprRigth3.visible == true:
			$SpritePath/Rat.position = Vector2(296,0)
			
			
func _cooldown_end():
	next_step = true
func _process(delta):
	_pos_down_one()
	_pos_down_two()
	_pos_rigth_one()
	_pos_rigth_two()
	_pos_up_one()
	_pos_up_two()
	_pos_rigth_three()
	_pos_rigth_four()
	



func _on_NextButton2_pressed():
	var n = 10
	for i in n:
		if i == 1:
			print("Hola")
			_step()
		if i == 2:
			print("Adios")
			_step2()
		if i == 3:
			_step3()
	$NextButton.visible = true		
	pass # Replace with function body.
