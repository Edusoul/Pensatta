extends Area2D

var inside = false
var pos
var shopNode
var lockedNode = null


func _ready():
	# Hide the boldening effect
	$Panel2.hide()

func _on_FirstPlace_area_shape_entered(area_id, area, area_shape, self_shape):
	$Panel2.show() #Bolden block when entered
	inside = true
	if !shopNode: #If there is no active shop node
		shopNode = area.get_parent() #Get Shop Node which is entering
	
	
func _on_FirstPlace_area_shape_exited(area_id, area, area_shape, self_shape):
	if area.get_parent() == shopNode: #If node exiting is the active one
		$Panel2.hide() # Become transparent again when exited	
		inside = false
		shopNode = null
	
func _input(event):
	# Snapping effect when released inside
	if event is InputEventMouseButton and inside:
		if event.button_index == BUTTON_LEFT and not event.pressed: #Mouse Released
			pos = shopNode.get_global_position()
			shopNode.set_global_position(global_position-Vector2(125,50))	
