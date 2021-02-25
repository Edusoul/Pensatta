extends Node2D

var gear
var gear_two
var gear_three
var gear_four
var gear_five
var gear_six

var is_inside = false

var position_draggable_one 

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	set_process(true)


func _on_NextButton_pressed():
		get_tree().change_scene("res://scenes/End.tscn")

func _process(delta):
	if $Draggable.position < Vector2(690, 300):
		$Draggable.position = Vector2(690, 300)
	if $Draggable2.position < Vector2(1090, 410) and $Draggable2.position > Vector2(1080, 400):
		$Draggable2.position = Vector2(1090, 410)
	if $Draggable3.position < Vector2(890, 520) and $Draggable3.position > Vector2(880, 500):
		$Draggable3.position = Vector2(890, 520)
	if $Draggable4.position < Vector2(1290, 410) and $Draggable4.position > Vector2(1280, 400):
		$Draggable4.position = Vector2(1290, 410)
	if $Draggable5.position < Vector2(1090, 520) and $Draggable5.position > Vector2(1080, 510):
		$Draggable5.position = Vector2(1090, 520)
	if $Draggable6.position < Vector2(690, 410) and $Draggable6.position > Vector2(680, 400):
		$Draggable6.position = Vector2(690, 410)
	if $Draggable7.position < Vector2(890, 300) and $Draggable7.position > Vector2(880, 390):
		$Draggable7.position = Vector2(890, 300)
	if $Draggable8.position < Vector2(1290, 520) and $Draggable8.position > Vector2(1280, 510):
		$Draggable8.position = Vector2(1290, 520)
	if $Draggable9.position < Vector2(1290, 300) and $Draggable9.position > Vector2(1280, 290):
		$Draggable9.position = Vector2(1290, 300)
	if $Draggable10.position < Vector2(1090, 300) and $Draggable10.position > Vector2(1080, 290):
		$Draggable10.position = Vector2(1090, 300)
	if $Draggable11.position < Vector2(890, 410) and $Draggable11.position > Vector2(880, 400):
		$Draggable11.position = Vector2(890, 410)
	if $Draggable12.position < Vector2(690, 520) and $Draggable12.position > Vector2(680, 510):
		$Draggable12.position = Vector2(690, 520)
		
#	if global.answer.size() == 12:
	if $Draggable.position == Vector2(690, 300) and $Draggable2.position == Vector2(1090, 410) and $Draggable3.position == Vector2(890, 520) and $Draggable4.position == Vector2(1290, 410) and $Draggable5.position == Vector2(1090, 520) and $Draggable6.position == Vector2(690, 410) and $Draggable7.position == Vector2(890, 300) and $Draggable8.position == Vector2(1290, 520) and $Draggable9.position == Vector2(1290, 300) and $Draggable10.position == Vector2(1090, 300) and $Draggable11.position == Vector2(890, 410) and $Draggable12.position == Vector2(690, 520):
		_rotate_gears()
		gear.set_rotation(100*delta)
		gear_two.set_rotation(65*delta)
		gear_three.set_rotation(65*delta)
		gear_four.set_rotation(65*delta)
		gear_five.set_rotation(65*delta)
		gear_six.set_rotation(65*delta)
	else:
		pass

func _rotate_gears():
	gear = $Sprite
	gear.get_rotation()
	gear_two = $Sprite2
	gear_two.get_rotation()
	gear_three = $Sprite3
	gear_three.get_rotation()
	gear_four = $Sprite4
	gear_four.get_rotation()
	gear_five = $Sprite5
	gear_five.get_rotation()
	gear_six = $Sprite6
	gear_six.get_rotation()
	
func _on_Button_pressed():
	if $Draggable.position != Vector2(990, 663) and $Draggable2.position != Vector2(770, 663) and $Draggable3.position != Vector2(1210, 663) and $Draggable4.position != Vector2(990, 663) and $Draggable5.position != Vector2(770, 663) and $Draggable6.position != Vector2(1210, 663) and $Draggable7.position != Vector2(990, 663) and $Draggable8.position != Vector2(770, 663) and $Draggable9.position != Vector2(1210, 663):
		$Draggable10.visible = true
		$Draggable11.visible = true
		$Draggable12.visible = true
	if $Draggable.position != Vector2(990, 663) and $Draggable2.position != Vector2(770, 663) and $Draggable3.position != Vector2(1210, 663) and $Draggable4.position != Vector2(990, 663) and $Draggable5.position != Vector2(770, 663) and $Draggable6.position != Vector2(1210, 663):
		$Draggable7.visible = true
		$Draggable8.visible = true
		$Draggable9.visible = true
	if $Draggable.position != Vector2(990, 663) and $Draggable2.position != Vector2(770, 663) and $Draggable3.position != Vector2(1210, 663):
		$Draggable4.visible = true
		$Draggable5.visible = true
		$Draggable6.visible = true	
	pass # Replace with function body.


func _on_Button2_pressed():
	if $Draggable12.position == Vector2(1210, 663) and $Draggable11.position == Vector2(990, 663) and $Draggable10.position == Vector2(770, 663):
		$Draggable10.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$Draggable7.visible = true
		$Draggable8.visible = true
		$Draggable9.visible = true
	if $Draggable9.position == Vector2(1210, 663) and $Draggable8.position == Vector2(990, 663) and $Draggable7.position == Vector2(770, 663): 
		$Draggable9.visible = false
		$Draggable8.visible = false
		$Draggable7.visible = false
		$Draggable6.visible = true
		$Draggable5.visible = true
		$Draggable4.visible = true
	pass # Replace with function body.
	
#func correct():
#		if $Draggable.position == Vector2(690, 300):
#			global.answer.append(1)
#			print(global.answer)
#		if $Draggable2.position == Vector2(1090, 410):
#			global.answer.append(2)
#			print(global.answer)
#		if $Draggable3.position == Vector2(890, 520):
#			global.answer.append(3)
#			print(global.answer)
#		if $Draggable4.position == Vector2(1290, 410):
#			global.answer.append(4)
#			print(global.answer)
#		if $Draggable5.position == Vector2(1090, 520):
#			global.answer.append(5)
#			print(global.answer)
#		if $Draggable6.position == Vector2(690, 410):
#			global.answer.append(6)
#			print(global.answer)
#		if $Draggable7.position == Vector2(890, 300):
#			global.answer.append(7)
#			print(global.answer)
#		if $Draggable8.position == Vector2(1290, 520):
#			global.answer.append(8)
#			print(global.answer)
#		if $Draggable9.position == Vector2(1290, 300):
#			global.answer.append(9)
#			print(global.answer)
#		if $Draggable10.position == Vector2(1090, 300):
#			global.answer.append(10)
#			print(global.answer)
#		if $Draggable11.position == Vector2(890, 410):
#			global.answer.append(11)
#			print(global.answer)
#		if $Draggable12.position == Vector2(690, 520):
#			global.answer.append(12)
#			print(global.answer)					
