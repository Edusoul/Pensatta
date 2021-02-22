extends Node2D
const block = preload("res://scenes/Block.tscn")

signal connection(c_id2,c_targetID2,truth) # Alert all blocks of a new connection
signal active(active_id,right) # Alert blocks in chain which is being executed


var blocks = [	"Poner fondo 1",
				"Poner fondo 2",
				"Poner filtro 1",
				"Poner filtro 2"]

# CONTROL OF BLOCK ORDER
var id2 = 0 # Counter of all unique IDs
var chain = [] # Chain of unique IDs
var commandChain = [] # Chain of command IDs
var blockNodes = []

func _ready():
	find_node("Fondo1").hide()
	find_node("Fondo2").hide()
	find_node("Filtro1").hide()
	find_node("Filtro2").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	connect("connection",get_node("MainBlock"),"connection")
	
	for i in range(4): # Make a block for each direction
		var bl = block.instance()
		makeBlock(bl,i) # At the end
		self.add_child(bl)
		id2 += 1
		
# EXECUTE COMMANDS
func EXECUTE():
	find_node("Fondo1").hide()
	find_node("Fondo2").hide()
	find_node("Filtro1").hide()
	find_node("Filtro2").hide()
	for command in commandChain:
		if command[1] == 0:
			find_node("Fondo1").show()
			find_node("Fondo2").hide()
		if command[1] == 1:
			find_node("Fondo2").show()
			find_node("Fondo1").hide()
		if command[1] == 2:
			find_node("Filtro1").show()
		if command[1] == 3:
			find_node("Filtro2").show()
		yield(get_tree().create_timer(1.0), "timeout")

# ADD INFO TO CHAIN
func chainUp(c_id,c_id2,targetID,targetID2,truth):
	if truth:
		emit_signal("connection",c_id2,targetID2,true)
		chain.append([targetID2,c_id2])
		commandChain.append([targetID,c_id])
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
