extends Node2D
const block = preload("res://scenes/Block.tscn")

signal connection(c_id2,c_targetID2,truth) # Alert all blocks of a new connection
signal active(active_id) # Alert blocks in chain which is being executed
	
var done = false
var detect = false
var clean = false
var clean_area
var t = 0


# TYPES OF BLOCK
var blocks = ["Seguir camino",
				"Detectar si baldosa está limpia",
				"Limpiar baldosa"]

# CONTROL OF BLOCK ORDER
var id2 = 0 # Counter of all unique IDs
var chain = [] # Chain of unique IDs
var commandChain = [] # Chain of command IDs
var blockNodes = []

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	get_node("NextButton").hide()
	connect("connection",get_node("MainBlock"),"connection")
	
	for i in range(len(blocks)): # Make a block for each direction
		var bl = block.instance()
		makeBlock(bl,i) # At the end
		self.add_child(bl)
		id2 += 1
		
# EXECUTE COMMANDS
func EXECUTE():
	# Remember that commandChain is structured as follows:
	# 0: First Block
	# 1: Connected Block
	# 2: No. of Repetitions
	find_node("PathFollow2D").set_offset(0)
	for command in commandChain:
		if command[1] == 0: find_node("PathFollow2D").move = true
		if command[1] == 1: detect = true
		if command[1] == 2: clean = true
		if command[1] < 2: emit_signal("active",command[1])
		yield(get_tree().create_timer(1.0), "timeout")
		
func _area_entered(area):
	if detect and clean:
		clean_area = area.get_node("Mancha")
		emit_signal("active",2)
		t = 0
		yield(get_tree().create_timer(0.3), "timeout")
		find_node("PathFollow2D").move = false
		yield(get_tree().create_timer(1.0), "timeout")
		find_node("PathFollow2D").move = true

func _process(delta):
	t += delta
	if clean_area:
		clean_area.self_modulate.a = lerp(1,0,t)

# ADD INFO TO CHAIN
func chainUp(c_id,c_id2,targetID,targetID2,truth,n):
	if truth:
		emit_signal("connection",c_id2,targetID2,true)
		chain.append([targetID2,c_id2])
		commandChain.append([targetID,c_id,n])
	else:
		if c_id2 == chain[-1][1]:	
			emit_signal("connection",c_id2,chain[-1][0],false)
			chain.pop_back()
			commandChain.pop_back()
	
# BLOCK GENERATION
func makeBlock(bl,i):
	bl.id = i # Direction ID
	bl.id2 = id2 # Unique ID
	bl.text = blocks[i] # Text based on ID
	bl.set_position(Vector2(1024,180+i*550/len(blocks)))
	bl.connect("linked",self,"chainUp") # When linked, append to the chain
	connect("active",bl,"_active") # To listen which block is active
	connect("connection",bl,"_connection") # To listen when connections are made
	blockNodes.append(bl)
	
func redoBlock(id):
	var bl = block.instance()
	makeBlock(bl,id)
	self.add_child(bl)
	id2 += 1
	
# WHEN SPACEBAR IS HIT
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_SPACE:
			if !done:
				EXECUTE()
	
# NEXT BUTTON SHENANIGANS
func _done():
	find_node("NextButton").show()
	emit_signal("active",-1)

func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/End.tscn")


