extends Node2D

signal clicked

var text = "null"
var is_system = true
var speed = 100
var mousein = true
var rotate_back = false


func _ready():
	$Panel/Label.text = text
	
	#Generates a random starting position and direction
	randomize()
	var screenSize = get_viewport().get_visible_rect().size
	var rndX = rand_range(0, screenSize.x-256)
	var rndY = rand_range(0, screenSize.y-32)
	var direction = rand_range(0, 2*PI)
	
	self.position = Vector2(rndX,rndY)
	self.linear_velocity = Vector2(speed, 0).rotated(direction)	

func panelClicked(event):
	if event is InputEventMouseButton:
		if is_system: 
			self.hide()
			emit_signal("clicked")
			
func _stop():
	self.linear_velocity = Vector2(0,0)
	self.angular_velocity = 0
	rotate_back = true
	
func _process(delta):
	if rotate_back:
		self.rotation = lerp(self.rotation,0,delta)
