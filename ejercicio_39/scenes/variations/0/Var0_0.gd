extends Node2D
const block = preload("res://scenes/Block.tscn")
const blockOp = preload("res://scenes/BlockOp.tscn")

signal connection(c_id2,c_targetID2,truth) # Alert all blocks of a new connection
signal active(active_id,right) # Alert blocks in chain which is being executed
	
var done = false

# TYPES OF BLOCK
var blocks = ["Número","Sumado","Restado","Multiplicado","Dividido"]
var blocks2 = ["Número","+","-","x","/"]

# CONTROL OF BLOCK ORDER
var id2 = 0 # Counter of all unique IDs
var n
var chain = [] # Chain of unique IDs
var commandChain = [] # Chain of command IDs
var blockNodes = []

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	get_node("NextButton").hide()
	connect("connection",get_node("MainBlock"),"connection")
	
	var bl = block.instance()
	makeBlock(bl,0) # At the end
	self.add_child(bl)
	id2 += 1
	
	for i in range(4): # Make a block for each direction
		bl = blockOp.instance()
		makeBlock(bl,i+1) # At the end
		self.add_child(bl)
		id2 += 1
		
# EXECUTE COMMANDS
func EXECUTE():
	for t in range(len(chain)):
		n = blockNodes[ chain[t][1] ].n
		commandChain[t][2] = n
	
	var k = 0
	var result = 0
	var operation = -1
	#-1: First Block
	# 0: Number Block
	# 1: Sum; 2: Substraction; 3: Multiplication; 4: Division 
	
	for command in commandChain:
		if operation == -1: # If operation just begun
			emit_signal("active",chain[0][1],true)
			if command[1] == 0: # Assign result to first number
				operation = command[1]
				result = command[2]
				print(result) ##############################################################
				yield(get_tree().create_timer(1.0), "timeout")
			else: # If not a number, abort
				yield(get_tree().create_timer(1.0), "timeout")
				emit_signal("active",chain[0][1],false)
				yield(get_tree().create_timer(1.0), "timeout")
				get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
		else:
			emit_signal("active",chain[k][1],true)
			if command[1] == 0:
				if operation == 1:
					result += command[2]
				if operation == 2:
					result -= command[2]
				if operation == 3:
					result *= command[2]
				if operation == 4:
					if command[2] != 0:
						result /= command[2]
					else:
						emit_signal("active",chain[0][1],false)
						yield(get_tree().create_timer(1.0), "timeout")
						get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
				print(command[2]) ##############################################################
				print("="+str(result))
			else:
				operation = command[1]
				print(blocks2[operation]) ########################################################
			yield(get_tree().create_timer(1.0), "timeout")
		k += 1
						

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
	bl.set_position(Vector2(1024,180+i*550/5))
	bl.connect("linked",self,"chainUp") # When linked, append to the chain
	connect("active",bl,"_active") # To listen which block is active
	connect("connection",bl,"_connection") # To listen when connections are made
	blockNodes.append(bl)
	
func redoBlock(id):
	var bl
	if id == 0: bl = block.instance()
	else: bl = blockOp.instance()
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
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")
