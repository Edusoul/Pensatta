extends Node

var checks = []
# Load the custom images for the mouse cursor.
var arrow = load("res://assets/arrow.png")
var hand = load("res://assets/mano.png")
var buttons = {}
var checkboxes = []
var correct_checkboxes = ["1", "3", "5", "6", "9", "11", "12", "13"]

func _ready():
	$FinishedButton.visible = false
	for child in get_children():
#		if child is CheckBox:
#			child.visible = false
		if child is Button:
			if child is CheckBox:
				child.visible = false
				checkboxes.append(child)
			elif child.get_name() != "FinishedButton":
				buttons[child.get_name()] = false

func all_pressed():
	var left = 0
	for button_pressed in buttons.values():
#		print(button_pressed)
		if !button_pressed:
			return false
	
	return true

func _on_PowerButton_pressed():
	if not buttons["PowerButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$Power.visible = true
		$PowerButton.text = "Visto"
		buttons["PowerButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_CDButton_pressed():
	if not buttons["CDButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$CD.visible = true
		$CDButton.text = "Visto"
		buttons["CDButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_CPUButton_pressed():
	if not buttons["CPUButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$CPU.visible = true
		$CPUButton.text = "Visto"
		buttons["CPUButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_RAMButton_pressed():
	if not buttons["RAMButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$RAM.visible = true
		$RAMButton.text = "Visto"
		buttons["RAMButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_FanButton_pressed():
	if not buttons["FanButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$Fan.visible = true
		$FanButton.text = "Visto"
		buttons["FanButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_GraphicsButton_pressed():
	if not buttons["GraphicsButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$Graphics.visible = true
		$GraphicsButton.text = "Visto"
		buttons["GraphicsButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_DriveButton_pressed():
	if not buttons["DriveButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$Drive.visible = true
		$DriveButton.text = "Visto"
		buttons["DriveButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_BoardButton_pressed():
	if not buttons["BoardButton"]:
		$SelectLabel.visible = false
		all_labels_invisible()
		$Board.visible = true
		$BoardButton.text = "Visto"
		buttons["BoardButton"] = true
			
		if all_pressed():
			$Timer.start()

func _on_Timer_timeout():
	all_labels_invisible()
	$SelectLabel.text = "Ahora rellena las casillas"
	$SelectLabel.visible = true
	for child in get_children():
		if child is CheckBox:
			child.visible = true
		if child.get_name() == "FinishedButton":
			child.visible = true
	
func all_labels_invisible():
	for child in get_children():
		if child is Button:
			if child is CheckBox:
				pass
			elif child.get_name() != "FinishedButton":
				get_node(child.get_name().split("Button")[0]).visible = false


func _on_FinishedButton_pressed():
	var len_marked = 0
	var all_correct = true
	for i in checkboxes.size():
		var n = i + 1
		if checkboxes[i].pressed:
			len_marked +=  1
		if str(n) in correct_checkboxes:
			if !checkboxes[i].pressed:
				all_correct = false
	
	if len_marked != correct_checkboxes.size():
		global.answer_mode = 0
	elif !all_correct:
		global.answer_mode = 1
	elif all_correct:
		global.answer_mode = 2
			
	get_tree().change_scene("res://scenes/End.tscn")
