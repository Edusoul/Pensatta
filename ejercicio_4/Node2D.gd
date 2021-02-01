extends Node2D

var pressed = false
var lines = []
var correct_matches = [
	{ "start": 0, "end": 0 },
	{ "start": 1, "end": 2 },
	{ "start": 2, "end": 1 },
	{ "start": 3, "end": 3 },
]
var line
var line_start
var components = []
var descriptions = []

func _ready():
	var area_children = get_child(0).get_children()
	
	for child in area_children:
		if child is Sprite:
			components.append(child)
		elif child is Label:
			descriptions.append(child)	
	
func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			pressed = true
			line = Line2D.new()
			line.default_color = Color("#00FFFF")
			line.width=8.0
			add_child(line)
			line_start = (get_viewport().get_mouse_position())#aqui me muestra la posicion del mouse
		else:
			pressed = false
			var end = (get_viewport().get_mouse_position())
			var start_match = start_component_match(line_start)
			var end_match = end_component_match(end)
			print(start_match)
			print(end_match)
			
			if (start_match == 0 or start_match) and \
			   (end_match == 0 or end_match):
				lines.append({ "node": line.duplicate(), "start": start_match, \
							   "end": end_match })
			else:
				line.queue_free()
			line = null
			
	if event is InputEventMouse:
		if pressed:
			line.add_point(event.position)
			
			
func _on_Button_pressed():
	get_tree().change_scene("res://final.tscn")

func start_component_match(start):
	for i in range(components.size()):
		var component_pos = components[i].position
		var component_width = components[i].texture.get_size().x
		var component_height = components[i].texture.get_size().y
		if start.x > component_pos.x and \
		   start.x < component_pos.x + component_width and \
		   start.y > component_pos.y and \
		   start.y < component_pos.y + component_height:
			return i
	return null
	
func end_component_match(end):
	for i in range(descriptions.size()):
		var description_pos = descriptions[i].get_position()
		var description_width = descriptions[i].get_size().x
		var description_height = descriptions[i].get_size().y
		if end.x > description_pos.x and \
		   end.x < description_pos.x + description_width and \
		   end.y > description_pos.y and \
		   end.y < description_pos.y + description_height:
			return i
	return null
	
	
