extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


func _on_NextButton_pressed():
		get_tree().change_scene("res://scenes/Escena2.tscn")
		
func _physics_process(delta):
	_change()
	pass
	
func _on_Button_pressed():
	$Button9.visible = true
	$Button.visible = false
	if $Button9.visible == true:
		global.rights_wrong.push_back(10)
		print(global.rights_wrong)
func _on_Button9_pressed():
	$Button9.visible = false
	$Button.visible = true
	if $Button9.visible == false:
		global.rights_wrong.erase(10)
		print(global.rights_wrong)

func _on_Button2_pressed():
	$Button10.visible = true
	$Button2.visible = false
	if $Button10.visible == true:
		global.rights.push_back(1)
		print(global.rights)
func _on_Button10_pressed():
	$Button10.visible = false
	$Button2.visible = true
	if $Button10.visible == false:
		global.rights.erase(1)
		print(global.rights) 
	
	
func _on_Button3_pressed():
	$Button11.visible = true
	$Button3.visible = false
	if $Button11.visible == true:
		global.rights_wrong.push_back(11)
		print(global.rights_wrong)
func _on_Button11_pressed():
	$Button11.visible = false
	$Button3.visible = true
	if $Button11.visible == false:
		global.rights_wrong.erase(11)
		print(global.rights_wrong)
	
func _on_Button4_pressed():
	$Button4.visible = false
	$Button12.visible = true
	if $Button12.visible == true:
		global.rights.push_back(2)
		print(global.rights)
func _on_Button12_pressed():
	$Button4.visible = true
	$Button12.visible = false
	if $Button12.visible == false:
		global.rights.erase(2)
		print(global.rights)

func _on_Button5_pressed():
	$Button5.visible = false
	$Button13.visible = true
	if $Button13.visible == true:
		global.rights_wrong.push_back(12)
		print(global.rights_wrong)
func _on_Button13_pressed():
	$Button5.visible = true
	$Button13.visible = false
	if $Button13.visible == false:
		global.rights_wrong.erase(12)
		print(global.rights_wrong)

func _on_Button6_pressed():
	$Button6.visible = false
	$Button14.visible = true
	if $Button14.visible == true:
		global.rights.push_back(3)
		print(global.rights)
func _on_Button14_pressed():
	$Button6.visible = true
	$Button14.visible = false
	if $Button14.visible == false:
		global.rights.erase(3)
		print(global.rights)

func _on_Button7_pressed():
	$Button7.visible = false
	$Button15.visible = true
	if $Button15.visible == true:
		global.rights.push_back(4)
		print(global.rights)
func _on_Button15_pressed():
	$Button7.visible = true
	$Button15.visible = false
	if $Button15.visible == false:
		global.rights.erase(4)
		print(global.rights)

func _on_Button8_pressed():
	$Button8.visible = false
	$Button16.visible = true
	if $Button16.visible == true:
		global.rights.push_back(5)
		print(global.rights)
func _on_Button16_pressed():
	$Button8.visible = true
	$Button16.visible = false
	if $Button16.visible == false:
		global.rights.erase(5)
		print(global.rights)
		
func _change():
	if global.rights_wrong.size() == 3 and global.rights.size() == 2:
		get_tree().change_scene("res://scenes/Escena2.tscn")	
	elif global.rights_wrong.size() == 2 and global.rights.size() == 3:
		get_tree().change_scene("res://scenes/Escena2.tscn")	
	elif global.rights_wrong.size() == 1 and global.rights.size() == 4:
		get_tree().change_scene("res://scenes/Escena2.tscn")
	elif global.rights.size() == 5:
		get_tree().change_scene("res://scenes/Escena2.tscn")
