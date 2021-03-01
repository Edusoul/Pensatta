extends Control

signal linked(shadow)
signal freed(shadow)

var dragPosition = null # Is being dragged
var getBack = false # Is heading back to its shadow
var inside # The shadow node that holds this button
var queue = false # If it is waiting for the shadow to empty
var targetPos # Position of Shadow objective
var text = ""

func _ready():
	find_node("Button").text = text
	targetPos = rect_global_position
	
# MOVEMENT AND MOUSE INTERACTION
func _gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed: # If clicked
			dragPosition = get_global_mouse_position() - rect_global_position
			getBack = false # Stop heading back
			emit_signal("freed",inside) # Announce departure from shadow
		else:
			dragPosition = null
			getBack = true # getBack and getToTarget get executed in _process
	if event is InputEventMouseMotion: #Dragging
		if dragPosition:
			getBack = false
			emit_signal("freed",inside)
			rect_global_position = get_global_mouse_position() - dragPosition

func _process(delta):
	if getBack: #Lerp back to target
		targetPos = inside.rect_global_position
		rect_global_position = lerp(rect_global_position,targetPos,10*delta)
		if (rect_global_position-targetPos).length() < 1:
			getBack = false

func _area_entered(area): # If entered shadow while being dragged
	if (area.get_name() == "ShadowArea") and !getBack:
		queue = true # Wait for the current node in shadow to leave
		inside = area.get_parent() # Get shadow node
		emit_signal("linked",inside) # Say "Hey I'm in this shadow"
		
func _area_exited(area): # If entered shadow while being dragged
	if (area.get_name() == "ShadowArea") and !getBack: 
		emit_signal("freed",inside) # Say "Hey Im leaving this shadow"

func _update(areaIn,areaFree):
	if (inside == areaIn): # If node is inside the shadow being entered by another
		if !queue:
			inside = areaFree # Head to the free node
			getBack = true # Begin return
		else:
			queue = false 
