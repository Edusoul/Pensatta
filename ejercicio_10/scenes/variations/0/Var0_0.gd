extends Node2D
const block = preload("res://scenes/Block.tscn")

signal connection(c_id2,c_targetID2,truth) # Alert all blocks of a new connection
signal active(active_id,right) # Alert blocks in chain which is being executed
	
var path = ["abajo", "abajo", "derecha","arriba", "arriba", "derecha",
			"abajo", "abajo", "abajo"] # Correct order

# TYPES OF BLOCK AND THEIR VECTORIAL REPRESENTATION
var blocks = ["arriba","abajo","derecha","izquierda"]
var vectors = [[0,1],[0,-1],[1,0],[-1,0]]

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
	
	for i in range(4): # Make a block for each direction
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
	
	var mov #Vector of movement
	var n = 0
	
	for t in range(len(chain)):
		n = blockNodes[ chain[t][1] ].n
		commandChain[t][2] = n
	
	print(commandChain)
	
	var kk = 0 # Path counter
	for k in range(len(chain)):
		var r = 1 # Repetition counter
		while r <= commandChain[k][2]:
			emit_signal("active",chain[k][1],true)
			var q = commandChain[k][1]
			if blocks[q] == path[kk]:
				mov = 135*Vector2(vectors[q][0],-vectors[q][1])
				find_node("Katty").global_position += mov
				yield(get_tree().create_timer(1.0), "timeout")
			else:
				emit_signal("active",chain[k][1],false)
				yield(get_tree().create_timer(1.0), "timeout")
				get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
			r += 1
			kk += 1
			if kk == len(path):
				get_node("NextButton").show()
				break

# ADD INFO TO CHAIN
func chainUp(c_id,c_id2,targetID,targetID2,truth,n):
	if truth:
		emit_signal("connection",c_id2,targetID2,true)
		chain.append([targetID2,c_id2])
		commandChain.append([targetID,c_id,n])
		redoBlock(c_id)
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
	bl.set_position(Vector2(1024,180+i*550/4))
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
			EXECUTE()
	
# NEXT BUTTON SHENANIGANS
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")
