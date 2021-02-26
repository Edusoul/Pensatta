extends Node2D
const block = preload("res://scenes/Block.tscn")

signal connection(c_id2,c_targetID2,truth) # Alert all blocks of a new connection
signal active(active_id) # Alert blocks in chain which is being executed


var blocks = [	"Cambiar a luz verde",
				"Cambiar a luz amarilla",
				"Cambiar a luz roja",
				"Esperar 5 segundos"]
				
var lightsOn = [false,false,false] # The lights ARE on
var lightsOn2 = [false,false,false,false] # The lights WERE toggled

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
		
	for k in range(3):
		find_node("Luz"+str(k)).self_modulate.a = 0.5
		
# EXECUTE COMMANDS
func EXECUTE():
	var k = 0
	for command in commandChain:
		emit_signal("active",chain[k][1])
		k += 1
		if command[1] < 3:
			lightsOn = [false,false,false]
			for q in range(3):
				find_node("Luz"+str(q)).self_modulate.a = 0.5
			lightsOn[command[1]] = true
			find_node("Luz"+str(command[1])).self_modulate.a = 1
		else:
			yield(get_tree().create_timer(4.0), "timeout")
		yield(get_tree().create_timer(1.0), "timeout")
		lightsOn2[command[1]] = true
	emit_signal("active",id2+1)
	
	#Check if all lights were used
	if lightsOn2[0] and lightsOn2[1] and lightsOn2[2] and lightsOn2[3]:
		global.correct_answers_no = 1
	else:
		global.correct_answers_no = 0		
		global.incorrect_answers_no = 1
	
	get_node("NextButton").show()
	
	
		

# ADD INFO TO CHAIN
func chainUp(c_id,c_id2,targetID,targetID2,truth):
	if truth:
		emit_signal("connection",c_id2,targetID2,true)
		chain.append([targetID2,c_id2])
		commandChain.append([targetID,c_id])
		
#		var bl = block.instance()
#		makeBlock(bl,c_id) # At the end
#		self.add_child(bl)
#		id2 += 1
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
