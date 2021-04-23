extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")

func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")

func _physics_process(delta):
	_change()
	
func _on_Button_pressed():
	$Button9.visible = true
	$Button.visible = false
	if $Button9.visible == true:
		global.duties.push_back(20)
		print(global.duties)
func _on_Button9_pressed():
	$Button9.visible = false
	$Button.visible = true
	if $Button9.visible == false:
		global.duties.erase(20)
		print(global.duties)
		
func _on_Button2_pressed():
	$Button10.visible = true
	$Button2.visible = false
	if $Button10.visible == true:
		global.duties_wrong.push_back(30)
		print(global.duties_wrong)
func _on_Button10_pressed():
	$Button10.visible = false
	$Button2.visible = true
	if $Button10.visible == false:
		global.duties_wrong.erase(30)
		print(global.duties_wrong)
	
func _on_Button3_pressed():
	$Button11.visible = true
	$Button3.visible = false
	if $Button11.visible == true:
		global.duties.push_back(21)
		print(global.duties)
func _on_Button11_pressed():
	$Button11.visible = false
	$Button3.visible = true
	if $Button11.visible == false:
		global.duties.push_back(21)
		print(global.duties)
	
func _on_Button4_pressed():
	$Button4.visible = false
	$Button12.visible = true
	if $Button12.visible == true:
		global.duties_wrong.push_back(31)
		print(global.duties_wrong)
func _on_Button12_pressed():
	$Button4.visible = true
	$Button12.visible = false
	if $Button12.visible == false:
		global.duties_wrong.push_back(31)
		print(global.duties_wrong)

func _on_Button5_pressed():
	$Button5.visible = false
	$Button13.visible = true
	if $Button13.visible == true:
		global.duties.push_back(22)
		print(global.duties)	
func _on_Button13_pressed():
	$Button5.visible = true
	$Button13.visible = false
	if $Button13.visible == false:
		global.duties.push_back(22)
		print(global.duties)	
	

func _on_Button6_pressed():
	$Button6.visible = false
	$Button14.visible = true
	if $Button14.visible == true:
		global.duties.push_back(23)
		print(global.duties)
func _on_Button14_pressed():
	$Button6.visible = true
	$Button14.visible = false
	if $Button9.visible == false:
		global.duties.push_back(23)
		print(global.duties)	

func _change():
	if global.duties_wrong.size() == 2 and global.duties.size() == 2:
		global.scene += 1
		if global.scene <= global.last_scene:
				get_tree().change_scene(
					"res://scenes/variations/0/Var0_{s}.tscn".format(
						{"s":global.scene}))
		else:
			get_tree().change_scene("res://scenes/End.tscn")
	if global.duties_wrong.size() == 1 and global.duties.size() == 3:
		global.scene += 1
		if global.scene <= global.last_scene:
				get_tree().change_scene(
					"res://scenes/variations/0/Var0_{s}.tscn".format(
						{"s":global.scene}))
		else:
			get_tree().change_scene("res://scenes/End.tscn")
	if global.duties.size() == 4:
		global.scene += 1
		if global.scene <= global.last_scene:
				get_tree().change_scene(
					"res://scenes/variations/0/Var0_{s}.tscn".format(
						{"s":global.scene}))
		else:
			get_tree().change_scene("res://scenes/End.tscn")
