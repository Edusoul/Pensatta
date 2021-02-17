extends Node2D

signal clicked

var text = "null"
var is_system = true
var speed = 100
var mousein = true
var rotate_back = false
var color = Color(1,1,1,1)


func _ready():
	find_node("Label").text = text
	$Ball.self_modulate = color
	
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
	self.angular_velocity = lerp(self.angular_velocity,0,delta)	
	if rotate_back:
		self.rotation = lerp(self.rotation,0,delta)

func _mouse_entered():
	$Ball.self_modulate = color.darkened(0.2)
	
func _mouse_exited():
	$Ball.self_modulate = color
