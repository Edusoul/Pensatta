extends Control

signal linked(id,id2,targetID,targetID2,truth)

export var text = "arriba"

var id = 0 # Type of block from 0 to 3
var id2 = 0 # Unique ID
var dragPosition = null
var linkedUp = false 
var linkedDown = false 
var inside = false
var onOrigin = true
var getBack = false
var getToTarget = false
var timer = 60 # Timer to go back to origin
var timer2 = 20 # Timer to link

var target # Target Node
var targetID
var targetID2
var targetPos
var initialPos

func _ready():
	find_node("Shadow").hide()
	find_node("Label").text = "Mover	               pasos " + text
	initialPos = rect_global_position
	find_node("CollisionBlock").disabled = true
	find_node("CollisionShadow").disabled = true

func _on_Node2D_gui_input(event):
	if event is InputEventMouseButton and !linkedDown:
		if event.pressed:
			dragPosition = get_global_mouse_position() - rect_global_position
		else:
			dragPosition = null
			find_node("CollisionBlock").disabled = true			
			# If not hovering another block's shadow, go back to base
			if !inside:
				getBack = true # getBack and getToTarget get executed in _process
			else: # Else, connect with said block
				getToTarget = true
				emit_signal("linked",id,id2,targetID,targetID2,true)
	if event is InputEventMouseMotion and !linkedDown: #Dragging
		if dragPosition:
			rect_global_position = get_global_mouse_position() - dragPosition
			find_node("CollisionBlock").disabled = false
			find_node("CollisionShadow").disabled = true
			if linkedUp:
				emit_signal("linked",id,id2,targetID,targetID2,false)
				linkedUp = false

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
		linkedUp = true
		find_node("CollisionShadow").disabled = false
		timer2 -= 1
		if timer2 == 0:
			getToTarget = false
			timer2 = 20
			
	if global.clear:
		find_node("Shadow").hide() #Hide all shadows

func connection(_id2,c_targetID2,truth):
	if id2 == c_targetID2:
		linkedDown = truth
		find_node("CollisionShadow").disabled = truth	
		

# SHADOW DYNAMICS
func _area_entered(area):
	#If block touches a shadow, that shadow appears
	target = area.get_parent()
	targetID = target.id
	targetID2 = target.id2
	var isShadow = area.get_name() == "ConnectArea"
	var otherOnOrigin = target.onOrigin
	var isLinkedDown = target.linkedDown
	if (targetID2 != id2) and isShadow and dragPosition and !otherOnOrigin and !isLinkedDown:
		inside = true
		area.find_node("Shadow").show()
		targetPos = target.get_global_position() + Vector2(0,55)
		global.clear = false

func _area_exited(area):
	if inside: inside = false
	area.get_parent().find_node("Shadow").hide()

