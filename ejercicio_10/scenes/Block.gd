extends Control

#Sends signal of self ids and target ids when connected or disconnected
signal linked(id,id2,targetID,targetID2,truth,n)

export var text = "arriba" # Text to display

#SELF INFO
var id = 0 # Type of block from 0 to 3
var id2 = 0 # Unique ID
var n = 1 # Number of repetitions
var dragPosition = null # Is being dragged
var linkedUp = false # Is linked upwards with the chain
var linkedDown = false # Is linked downwards in the chain
var inside = false # Is inside of a shadow

#ANIMATION CONTROL
var initialPos
var onOrigin = true # Is resting on the origin
var getBack = false # Is going back
var getToTarget = false # Is getting to the target
var timer = 60 # Timer to go back to origin
var timer2 = 20 # Timer to link

#TARGET INFO
var target # Target Node
var targetID
var targetID2
var targetPos

func _ready():
	find_node("Shadow").hide()
	find_node("Label").text = "Mover	               pasos " + text
	initialPos = rect_global_position
	find_node("CollisionBlock").disabled = true
	find_node("CollisionShadow").disabled = true
	find_node("ContourYellow").hide()
	find_node("ContourRed").hide()

# MOVEMENT AND MOUSE INTERACTION
func _on_Node2D_gui_input(event):
	if event is InputEventMouseButton and !linkedDown:
		if event.pressed:
			dragPosition = get_global_mouse_position() - rect_global_position
			find_node("CollisionBlock").disabled = false
			find_node("CollisionShadow").disabled = true
			if linkedUp:
				emit_signal("linked",id,id2,targetID,targetID2,false,n)
				linkedUp = false
		else:
			dragPosition = null
			find_node("CollisionBlock").disabled = true			
			# If not hovering another block's shadow, go back to base
			if !inside:
				getBack = true # getBack and getToTarget get executed in _process
			else: # Else, connect with said block
				getToTarget = true
				if !find_node("LineEdit").text:
					find_node("LineEdit").text = str(1)
				emit_signal("linked",id,id2,targetID,targetID2,true,n)
	if event is InputEventMouseMotion and !linkedDown: #Dragging
		if dragPosition:
			rect_global_position = get_global_mouse_position() - dragPosition
			find_node("CollisionBlock").disabled = false
			find_node("CollisionShadow").disabled = true
			if linkedUp:
				emit_signal("linked",id,id2,targetID,targetID2,false,n)
				linkedUp = false

# MOSTLY ANIMATION STUFF TO GET BACK TO BASE OR CONNECT
func _process(delta):
	n = int(find_node("LineEdit").text)
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

# WHEN MAIN SCRIPT REPORTS A CONNECTION, CHECK IF YOU'RE THE VICTIM
func _connection(_id2,c_targetID2,truthValue):
	if id2 == c_targetID2:
		linkedDown = truthValue
		find_node("CollisionShadow").disabled = truthValue
	find_node("LineEdit").hide()
	find_node("LineEdit").show()

func _active(active_id2,right):
	if id2 == active_id2:
		if right:	
			find_node("ContourYellow").show()
		else:
			find_node("ContourRed").show()
	yield(get_tree().create_timer(1.0), "timeout")
	find_node("ContourYellow").hide()
	find_node("ContourRed").hide()
		

# SHADOW AND LINKING DYNAMICS
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
		targetPos = target.get_global_position() + Vector2(0,50)
		global.clear = false

func _area_exited(area):
	if inside: inside = false
	area.get_parent().find_node("Shadow").hide()

