extends Node2D

signal ate
signal ded

var tail = load("res://scenes/snake/Tail.tscn")

var directions = {
	"up": Vector2(0,-1),
	"down": Vector2(0,1),
	"right": Vector2(1,0),
	"left": Vector2(-1,0)
}

var direction = Vector2(1,0) # Current direction
var heading = Vector2(1,0) # Current tail heading direction
var speed = 2 # Snake speed
const distance = 50 # Distance between blocks

var tails = [] # Node array of snake's body
var size = len(tails) # Size of snake's body
var moving = false # Start without moving to let the user read
var last_position # Last position to spawn more tail
var tail_signal = false # boolean to announce a new tail has to be made

func _ready():
	last_position = self.position
	global.correct_answers_no = 0	
	for _i in range(4):
		add_tail()

func add_tail():
	var inst = tail.instance()
	inst.position = last_position - heading*distance # New tail opposite of movement
	last_position = inst.position # New tail becomes last tail
	get_parent().find_node("Tail").add_child(inst)
	tails.append(inst)
	size = len(tails)
	global.correct_answers_no = size - 4
	

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		if direction != directions["down"]:
			direction = directions["up"]
	elif Input.is_action_pressed("ui_down"):
		if direction != directions["up"]:
			direction = directions["down"]
	elif Input.is_action_pressed("ui_right"):
		if direction != directions["left"]:
			direction = directions["right"]
	elif Input.is_action_pressed("ui_left"):
		if direction != directions["right"]:
			direction = directions["left"]
	speed += 0.001 # Speed increasing with time
	if moving: move() # If moving move
	if tail_signal: # If a new tail is ordered, add tail and switch off order
		add_tail()
		tail_signal = false
		
func move():
	self.position += speed*direction # Move head
	
	var mag # Distance magnitude
	var power = 2.5 # Power of distance magnitude
	var target # Target position
	for i in range(size):
		if i == 0: # For first block of body, follow head
			target = self.position
		else: # Otherwise follow preceding body block
			target = tails[i-1].position
			
		heading = (target - tails[i].position)
		mag = pow(heading.dot(heading),0.5)/distance
		heading = heading.normalized()
		tails[i].position += speed*heading*pow(mag,power)
		# The pow is to slow down blocks that get too close or to speed up
		# the ones that lag behind. If you see the mag variable, it is:
		# ==1 if the distance is the appropiate one
		# <1 if it's closer, thus, speed is reduced
		# >1 if it's further away, the speed is increased 
		
		if i == (size-1):
			last_position = tails[i].position # Set last tail position

func _area_entered(area):
	if area.get_parent() in tails.slice(2,-1): # If collided with object
		get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
	if area.get_name() == "Malo": # If ate bad fruit
		emit_signal("ded")
	elif "Bueno" in area.get_name(): # If ate good fruit
		area.hide() 
		tail_signal = true # Emit order to be executed at the end of _process()
		emit_signal("ate")
