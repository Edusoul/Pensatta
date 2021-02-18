extends Control

var id = -1
var id2 = -1
var onOrigin = false
var linkedDown = false

func _ready():
	find_node("Shadow").hide()
	
func _process(delta):
	if global.clear:
		find_node("Shadow").hide() #Hide all shadows

func connection(_id2,c_targetID2,truth):
	if id2 == c_targetID2:
		linkedDown = truth
		find_node("CollisionShadow").disabled = truth	
