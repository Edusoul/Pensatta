extends Node

var checks = []
# Load the custom images for the mouse cursor.
var arrow = load("res://assets/arrow.png")
var hand = load("res://assets/mano.png")
var make
var label
var label2
var label3
var label4
var label5
var color
var style
var color_btn
var btn
var btn2
var btn3
var btn4
var btn5
var check
var check2
var check3
var check4
var check5

func _ready():
	# Changes only the arrow shape of the cursor.
	# This is similar to changing it in the project settings.
	Input.set_custom_mouse_cursor(hand)
	# Changes a specific shape of the cursor (here, the I-beam shape).
	Input.set_custom_mouse_cursor(arrow, Input.CURSOR_IBEAM)
	
#Con esta parte del codigo puedo cambiar los colores de los botones	
#	style = StyleBoxFlat.new()
#	color_btn = Color(0, 255, 255)
#	style.set_bg_color(color_btn)
#	$Sprite/Button.set("custom_styles/normal", style)

func _on_Button_pressed():
	label = $Sprite/Mother_Board
	color = $Sprite/ColorRect
	make = true
	if make:
		label.visible = true
		color.visible = true
		btn = $Sprite/Button
		btn.visible = false
		btn2 = $Sprite/Button2	
		btn2.visible = false
		btn3 = $Sprite/Button3
		btn3.visible = false
		btn4 = $Sprite/Button4
		btn4.visible = false
		btn5 = get_node("Sprite/Button5")
		btn5.visible = false
		check = get_node("Sprite/CheckBox")
		check.visible = true
	else:
		print("error")
	pass # Replace with function body.

func _on_Button2_pressed():
	label2 = get_node("Sprite/Power_Font")
	color = get_node("Sprite/ColorRect")
	make = true
	if make:
		label2.visible = true
		color.visible = true
		btn = get_node("Sprite/Button")
		btn.visible = false
		btn2 = get_node("Sprite/Button2")	
		btn2.visible = false
		btn3 = get_node("Sprite/Button3")
		btn3.visible = false
		btn4 = get_node("Sprite/Button4")
		btn4.visible = false
		btn5 = get_node("Sprite/Button5")
		btn5.visible = false
		check2 = get_node("Sprite/CheckBox2")
		check2.visible = true
	else:
		print("error")
	pass # Replace with function body.

func _on_Timer_timeout():
	if label:
		label.visible = false
		color.visible = false
		btn.visible = true
		btn2.visible = true
		btn3.visible = true
		btn4.visible = true
		btn5.visible = true
	if label2:
		label2.visible = false
		color.visible = false
		btn.visible = true
		btn2.visible = true
		btn3.visible = true
		btn4.visible = true
		btn5.visible = true
	if label3:
		label3.visible = false
		color.visible = false
		btn.visible = true
		btn2.visible = true
		btn3.visible = true
		btn4.visible = true
		btn5.visible = true
	if label4:
		label4.visible = false
		color.visible = false
		btn.visible = true
		btn2.visible = true
		btn3.visible = true
		btn4.visible = true
		btn5.visible = true
	if label5:
		label5.visible = false
		color.visible = false
		btn.visible = true
		btn2.visible = true
		btn3.visible = true
		btn4.visible = true
		btn5.visible = true
				
	else:
		pass
func _on_Button3_pressed():
	label3 = get_node("Sprite/CPU")
	color = get_node("Sprite/ColorRect")
	make = true
	if make:
		label3.visible = true
		color.visible = true
		btn = get_node("Sprite/Button")
		btn.visible = false
		btn2 = get_node("Sprite/Button2")	
		btn2.visible = false
		btn3 = get_node("Sprite/Button3")
		btn3.visible = false
		btn4 = get_node("Sprite/Button4")
		btn4.visible = false
		btn5 = get_node("Sprite/Button5")
		btn5.visible = false
		check3 = get_node("Sprite/CheckBox3")
		check3.visible = true		
	else:
		print("error")
	pass # Replace with function body.


func _on_Button4_pressed():
	label4 = get_node("Sprite/Memory_RAM")
	color = get_node("Sprite/ColorRect")
	make = true
	if make:
		label4.visible = true
		color.visible = true
		btn = get_node("Sprite/Button")
		btn.visible = false
		btn2 = get_node("Sprite/Button2")	
		btn2.visible = false
		btn3 = get_node("Sprite/Button3")
		btn3.visible = false
		btn4 = get_node("Sprite/Button4")
		btn4.visible = false
		btn5 = get_node("Sprite/Button5")
		btn5.visible = false
		check4 = get_node("Sprite/CheckBox4")
		check4.visible = true
	else:
		print("error")
	pass # Replace with function body.


func _on_Button5_pressed():
	label5 = get_node("Sprite/Hard_DisK")
	color = get_node("Sprite/ColorRect")
	make = true
	if make:
		label5.visible = true
		color.visible = true
		btn = get_node("Sprite/Button")
		btn.visible = false
		btn2 = get_node("Sprite/Button2")	
		btn2.visible = false
		btn3 = get_node("Sprite/Button3")
		btn3.visible = false
		btn4 = get_node("Sprite/Button4")
		btn4.visible = false
		btn5 = get_node("Sprite/Button5")
		btn5.visible = false
		check5 = get_node("Sprite/CheckBox5")
		check5.visible = true	
	else:
		print("error")
	pass # Replace with function body.


func _on_CheckBox_pressed():
	check = get_node("Sprite/CheckBox")
	check.disabled = true
	checks.push_back(1)
	global.answered_correctly = checks
	pass # Replace with function body.


func _on_CheckBox2_pressed():
	check2 = get_node("Sprite/CheckBox2")
	check2.disabled = true
	checks.push_back(2)
	global.answer_correctly = checks
	pass # Replace with function body.


func _on_CheckBox3_pressed():
	check3 = get_node("Sprite/CheckBox3")
	check3.disabled = true
	checks.push_back(3)
	global.answer_correctly = checks
	pass # Replace with function body.


func _on_CheckBox4_pressed():
	check4 = get_node("Sprite/CheckBox4")
	check4.disabled = true
	checks.push_back(4)
	global.answered_correctly = checks
	pass # Replace with function body.


func _on_CheckBox5_pressed():
	check5 = get_node("Sprite/CheckBox5")
	check5.disabled = true
	checks.push_back(5)
	global.answered_correctly = checks
	pass # Replace with function body.


func _on_Timer_end():
	get_tree().change_scene("res://end.tscn")
	pass # Replace with function body.

