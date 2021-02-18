extends Node2D
const block = preload("res://scenes/Block.tscn")

signal connection(c_id2,c_targetID2,truth)

var path = [
	["abajo"  ,"derecha","abajo"],
	["abajo"  ,"arriba"	,"abajo"],
	["derecha","arriba"	,"abajo"]] # Correct order according to grid
	
var path2 = ["abajo", "abajo", "derecha",
			"arriba", "arriba", "derecha",
			"abajo", "abajo", "abajo"] # Correct order in order
	
var blocks = ["arriba","abajo","derecha","izquierda"]
var vectors = [[0,1],[0,-1],[1,0],[-1,0]]
var id2 = 0 # Counter of all unique IDs
var chain = [] # Chain of unique IDs
var commandChain = [] # Chain of command IDs

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	connect("connection",get_node("MainBlock"),"connection")
	
	for i in range(4):
		var bl = block.instance()
		makeBlock(bl,i)
		self.add_child(bl)
		id2 += 1
		
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_SPACE:
			EXECUTE()
		
func EXECUTE():
	print("_______")
#	for k in range(len(commandChain)):
#		var q = commandChain[k][1]
#		if blocks[q] == path2[k]:
#			var mov = Vector2(vectors[q][0],-vectors[q][1])
#			find_node("Katty").global_position += mov*135
#			print("Correcto!")
#		else:
#			_ready()


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")
		
func makeBlock(bl,i):
	bl.id = i
	bl.id2 = id2
	bl.text = blocks[i]
	bl.set_position(Vector2(1024,180+i*550/4))
	bl.connect("linked",self,"chainUp")
	connect("connection",bl,"connection")

func chainUp(c_id,c_id2,targetID,targetID2,truth):
	if truth:
		emit_signal("connection",c_id2,targetID2,true)
		chain.append([targetID2,c_id2])
		commandChain.append([targetID,c_id])
		redoBlock(c_id)
	else:
		if c_id2 == chain[-1][-1]:	
			emit_signal("connection",c_id2,chain[-1][0],false)
			chain.pop_back()
			commandChain.pop_back()
	
func redoBlock(id):
	var bl = block.instance()
	makeBlock(bl,id)
	self.add_child(bl)
	id2 += 1
