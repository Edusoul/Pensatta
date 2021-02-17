extends Node2D
const block = preload("res://scenes/Block.tscn")


var path = [
	["down" ,"right","down"],
	["down" ,"up"	,"down"],
	["right","up"	,"down"]]
	
var blocks = ["arriba","abajo","derecha","izquierda"]
var smols = [0,0,1,1]
var id2 = 0

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	var nodes = get_tree().get_nodes_in_group("staticButton")
	for node in nodes:
		node.connect("pressed",self,"_block_pressed")
	
	for i in range(4):
		var bl = block.instance()
		makeBlock(bl,i)
		self.add_child(bl)
		id2 += 1
		
		
func _block_pressed():
	print("ay")


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
	bl.smol = smols[i]
	bl.set_position(Vector2(1024,180+i*550/4))
	bl.connect("linked",self,"redoBlock")
	
func redoBlock(id):
	var bl = block.instance()
	makeBlock(bl,id)
	self.add_child(bl)
	id2 += 1
	

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
#func _process(delta):
#	global.timer -= delta
#	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
