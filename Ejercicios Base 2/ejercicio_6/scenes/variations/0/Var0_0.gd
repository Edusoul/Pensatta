extends Node2D


func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	print('posiciondel arrastrable')
	print($Draggable2.position)
	print('posicion del bloque')
	print($Sprite/sprBloque7.global_position)
	print($Sprite/sprBloque8.global_position)
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
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
func _physics_process(delta):
	_show()
#	_block_one()
	_block()
#	_block1()
	
func _show():
	if $Sprite/sprBloque1.visible == true or $Sprite/sprBloque2.visible == true or $Sprite/sprBloque3.visible == true or $Sprite/sprBloque4.visible == true or $Sprite/sprBloque5.visible == true or $Sprite/sprBloque6.visible == true:
		$ProgressBar.value = 84
	if $Sprite/sprBloque7.visible == true or $Sprite/sprBloque8.visible == true or $Sprite/sprBloque9.visible == true or $Sprite/sprBloque10.visible == true or $Sprite/sprBloque11.visible == true or $Sprite/sprBloque12.visible == true:
		$ProgressBar.value = 168
	if $Sprite/sprBloque13.visible == true or $Sprite/sprBloque14.visible == true or $Sprite/sprBloque15.visible == true or $Sprite/sprBloque16.visible == true or $Sprite/sprBloque17.visible == true or $Sprite/sprBloque18.visible == true:
		$ProgressBar.value = 242
	if $Sprite/sprBloque19.visible == true or $Sprite/sprBloque20.visible == true or $Sprite/sprBloque21.visible == true or $Sprite/sprBloque22.visible == true or $Sprite/sprBloque23.visible == true or $Sprite/sprBloque24.visible == true:
		$ProgressBar.value = 326
	if $Sprite/sprBloque25.visible == true or $Sprite/sprBloque26.visible == true or $Sprite/sprBloque27.visible == true or $Sprite/sprBloque28.visible == true or $Sprite/sprBloque29.visible == true or $Sprite/sprBloque30.visible == true:
		$ProgressBar.value = 410
	if $Sprite/sprBloque31.visible == true or $Sprite/sprBloque32.visible == true or $Sprite/sprBloque33.visible == true or $Sprite/sprBloque34.visible == true or $Sprite/sprBloque35.visible == true or $Sprite/sprBloque36.visible == true:
		$ProgressBar.value = 504
		
#func _block_one():
#	if $Draggable.position < Vector2(780, 395):
#		$Draggable.position = Vector2(776, 400)
#		$Sprite/sprBloque1.visible = true
#		$Draggable.visible = false
#	if $Draggable2.position < Vector2(780, 395):
#		$Draggable2.position = Vector2(776, 448)
#		$Sprite/sprBloque2.visible = true
#		$Draggable2.visible = false
#	if $Draggable3.position < Vector2(780, 395):
#		$Draggable3.position = Vector2(776, 400)
#		$Sprite/sprBloque3.visible = true
#		$Draggable3.visible = false
#	if $Draggable4.position < Vector2(780, 395):
#		$Draggable4.position = Vector2(776, 400)
#		$Sprite/sprBloque4.visible = true
#		$Draggable4.visible = false
#	if $Draggable5.position < Vector2(780, 395):
#		$Draggable5.position = Vector2(776, 400)
#		$Sprite/sprBloque5.visible = true
#		$Draggable5.visible = false		
#	if $Draggable6.position < Vector2(780, 395):
#		$Draggable6.position = Vector2(776, 400)
#		$Sprite/sprBloque6.visible = true
#		$Draggable6.visible = false		

func _block():
		if $Draggable.position < Vector2(780, 395):
			$Draggable.position = Vector2(776, 400)
		if $Draggable2.position < Vector2(780, 395):
			$Draggable2.position = Vector2(776, 448)
		if $Draggable3.position < Vector2(780, 395):
			$Draggable3.position = Vector2(776, 496)
		if $Draggable4.position < Vector2(780, 395):
			$Draggable4.position = Vector2(776, 544)
		if $Draggable5.position < Vector2(780, 395):
			$Draggable5.position = Vector2(776, 592)
		if $Draggable6.position < Vector2(780, 395):
			$Draggable6.position = Vector2(776, 640)
			
#func _block1()			:
#		if $Draggable2.position < Vector2(780, 395):
#			$Draggable2.position = Vector2(776, 400)
#		if $Draggable3.position < Vector2(780, 395):
#			$Draggable3.position = Vector2(776, 448)
#		if $Draggable4.position < Vector2(780, 395):
#			$Draggable4.position = Vector2(776, 496)
#		if $Draggable5.position < Vector2(780, 395):
#			$Draggable5.position = Vector2(776, 544)
#		if $Draggable6.position < Vector2(780, 395):
#			$Draggable6.position = Vector2(776, 592)
#		if $Draggable.position < Vector2(780, 395):
#			$Draggable.position = Vector2(776, 640)


