extends Control

signal linked(id)

export var text = "arriba"
export var smol = false

var id = 0 # Identificador de 0 a 3 de tipo de botón
var id2 = 0 # Identificador único
var dragPosition = null
var linked = false 
var inside = false
var onOrigin = true
var getBack = false
var getToTarget = false
var timer = 60
var timer2 = 20

var initialPos
var targetPos

func _ready():
	find_node("Shadow").hide()
	find_node("Label").text = "Mover	               pasos " + text
	if smol: # Change text for 'derecha' and 'izquierda'
		find_node("Label").get("custom_fonts/font").set_size(21)
		find_node("LineEdit").rect_position -= Vector2(10,0) 
	initialPos = rect_global_position

func _on_Node2D_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			dragPosition = get_global_mouse_position() - rect_global_position
		else:
			dragPosition = null
			# If not hovering another block's shadow, go back to base
			if !inside:
				getBack = true # getBack and getToTarget get executed in _process
			else: # Else, connect with said block
				getToTarget = true
				emit_signal("linked",id)
	if event is InputEventMouseMotion: #Dragging
		if dragPosition:
			rect_global_position = get_global_mouse_position() - dragPosition
			linked = false

func _process(delta):
	if getBack: #Lerp back to origin
		rect_global_position = lerp(rect_global_position,initialPos,5*delta)
		timer -= 1
		onOrigin = true
		if timer == 0:
			getBack = false
			timer = 60
	if getToTarget: # Lerp to target position
		rect_global_position = lerp(rect_global_position,targetPos,15*delta)
		global.clear = true
		onOrigin = false
		linked = true
		timer2 -= 1
		if timer2 == 0:
			getToTarget = false
			timer2 = 20
			
	if global.clear:
		find_node("Shadow").hide() #Hide all shadows


# SHADOW DYNAMICS
func _area_entered(area):
	#If block touches a shadow, that shadow appears
	var isShadow = area.get_name() == "ConnectArea"
	var otherOnOrigin = area.get_parent().onOrigin
	if (area.get_parent().id2 != id2) and isShadow and dragPosition and !otherOnOrigin:
		inside = true
		area.find_node("Shadow").show()
		targetPos = area.get_parent().get_global_position() + Vector2(0,55)
		global.clear = false

func _area_exited(area):
	if inside: inside = false
	area.get_parent().find_node("Shadow").hide()

