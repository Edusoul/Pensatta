extends Node


# Load the custom images for the mouse cursor.
var arrow = load("res://assets/arrow.png")
var hand = load("res://assets/mano.png")
var make
var label
var label2
var color

func _ready():
	# Changes only the arrow shape of the cursor.
	# This is similar to changing it in the project settings.
	Input.set_custom_mouse_cursor(arrow)

	# Changes a specific shape of the cursor (here, the I-beam shape).
	Input.set_custom_mouse_cursor(hand, Input.CURSOR_IBEAM)

func _on_Button_pressed():
	label = get_node("Sprite/Label")
	color = get_node("Sprite/ColorRect")
	
	make = true
	if make:
		label.visible = true
		color.visible = true
	else:
		print("error")
	pass # Replace with function body.


func _on_Timer_timeout():
#	label.visible = false
	label2.visible = false
	color.visible = false
	pass # Replace with function body.


func _on_CheckBox_visibility_changed():
	pass # Replace with function body.


func _on_Button2_pressed():
	label2 = get_node("Sprite/Label2")
	color = get_node("Sprite/ColorRect")
	make = true
	if make:
		label2.visible = true
		color.visible = true
	else:
		print("error")
	pass # Replace with function body.
