extends Node2D

var pressed = false
var line
var v1 = Vector2(151, 125)
var v2 = Vector2(231, -64)
var rc = Vector2(643, 245)

func _ready():
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed :
			pressed = true
			line = Line2D.new()
			line.default_color = Color("#00FFFF")
			line.width=8.0
			print("inicio")
			var inicio = (get_viewport().get_mouse_position())#aqui me muestra la posicion del mouse
			print(inicio)
		else :
			pressed = false
			
	if event is InputEventMouseMotion:
		if pressed:
			line.add_point(event.position)
			add_child(line)
			var final = (get_viewport().get_mouse_position())
			print("final")
			print(final)
			if final > rc:
				print("acertaste")
			else:
				print("fallaste")
			
			
func _on_Button_pressed():
	get_tree().change_scene("res://final.tscn")



