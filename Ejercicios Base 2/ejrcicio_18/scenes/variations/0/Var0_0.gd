extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	$Sprite/Label/MenuButton.get_popup().add_item("Microfono")
	$Sprite/Label/MenuButton.get_popup().add_item("Mouse")
	$Sprite/Label/MenuButton.get_popup().add_item("Camara")
	$Sprite/Label/MenuButton.get_popup().add_item("Teclado")
	$Sprite/Label/MenuButton.get_popup().connect("id_pressed",self,"_on_item_pressed_one")

	$Sprite/Label/MenuButton2.get_popup().add_item("Microfono")
	$Sprite/Label/MenuButton2.get_popup().add_item("Mouse")
	$Sprite/Label/MenuButton2.get_popup().add_item("Camara")
	$Sprite/Label/MenuButton2.get_popup().add_item("Teclado")
	$Sprite/Label/MenuButton2.get_popup().connect("id_pressed",self,"_on_item_pressed_two")
	
	$Sprite/Label/MenuButton3.get_popup().add_item("Microfono")
	$Sprite/Label/MenuButton3.get_popup().add_item("Mouse")
	$Sprite/Label/MenuButton3.get_popup().add_item("Camara")
	$Sprite/Label/MenuButton3.get_popup().add_item("Teclado")
	$Sprite/Label/MenuButton3.get_popup().connect("id_pressed",self,"_on_item_pressed_three")
	
	$Sprite/Label/MenuButton4.get_popup().add_item("Microfono")
	$Sprite/Label/MenuButton4.get_popup().add_item("Mouse")
	$Sprite/Label/MenuButton4.get_popup().add_item("Camara")
	$Sprite/Label/MenuButton4.get_popup().add_item("Teclado")
	$Sprite/Label/MenuButton4.get_popup().connect("id_pressed",self,"_on_item_pressed_four")	
		
func  _on_item_pressed_one(id):
	var item_name = $Sprite/Label/MenuButton.get_popup().get_item_text(id)
	if item_name == "Microfono":
		$Sprite/Label/MenuButton.visible = false
		$Sprite/Label/RequestOne.visible = true
		global.correct_answers_no.push_back(1)
		print(global.correct_answers_no)
	elif item_name == "Mouse":
		$Sprite/Label/MenuButton.visible = false
		$Sprite/Label/RequestTwo.visible = true
	elif item_name == "Camara":
		$Sprite/Label/MenuButton.visible = false
		$Sprite/Label/RequestThree.visible = true
	elif item_name == "Teclado":
		$Sprite/Label/MenuButton.visible = false
		$Sprite/Label/RequestFour.visible = true
		
func  _on_item_pressed_two(id):
	var item_name = $Sprite/Label/MenuButton2.get_popup().get_item_text(id)
	if item_name == "Microfono":
		$Sprite/Label/MenuButton2.visible = false
		$Sprite/Label/RequestOne2.visible = true
	elif item_name == "Mouse":
		$Sprite/Label/MenuButton2.visible = false
		$Sprite/Label/RequestTwo2.visible = true
	elif item_name == "Camara":
		$Sprite/Label/MenuButton2.visible = false
		$Sprite/Label/RequestThree2.visible = true
	elif item_name == "Teclado":
		$Sprite/Label/MenuButton2.visible = false
		$Sprite/Label/RequestFour2.visible = true
		global.correct_answers_no.push_back(2)
		print(global.correct_answers_no)
		
func  _on_item_pressed_three(id):
	var item_name = $Sprite/Label/MenuButton3.get_popup().get_item_text(id)
	if item_name == "Microfono":
		$Sprite/Label/MenuButton3.visible = false
		$Sprite/Label/RequestOne3.visible = true
	elif item_name == "Mouse":
		$Sprite/Label/MenuButton3.visible = false
		$Sprite/Label/RequestTwo3.visible = true
		global.correct_answers_no.push_back(3)
		print(global.correct_answers_no)
	elif item_name == "Camara":
		$Sprite/Label/MenuButton3.visible = false
		$Sprite/Label/RequestThree3.visible = true
	elif item_name == "Teclado":
		$Sprite/Label/MenuButton3.visible = false
		$Sprite/Label/RequestFour3.visible = true
	
func  _on_item_pressed_four(id):
	var item_name = $Sprite/Label/MenuButton4.get_popup().get_item_text(id)
	if item_name == "Microfono":
		$Sprite/Label/MenuButton4.visible = false
		$Sprite/Label/RequestOne4.visible = true
	elif item_name == "Mouse":
		$Sprite/Label/MenuButton4.visible = false
		$Sprite/Label/RequestTwo4.visible = true
	elif item_name == "Camara":
		$Sprite/Label/MenuButton4.visible = false
		$Sprite/Label/RequestThree4.visible = true
		global.correct_answers_no.push_back(4)
		print(global.correct_answers_no)		
	elif item_name == "Teclado":
		$Sprite/Label/MenuButton4.visible = false
		$Sprite/Label/RequestFour4.visible = true		
		
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
