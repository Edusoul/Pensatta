extends Node2D

var tiles = preload("res://scenes/Tile.tscn")
var tileNodes = []

var Rclick = false
var Lclick = false

func _ready():
	find_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	
	for i in range(64):
		var tile = tiles.instance()
		tileNodes.append(tile)
		find_node("GridContainer").add_child(tile)

func countTiles():
	var row = 0
	var column = 0
	for t in range(64):
		if (row == 3) or (row == 4):
			if tileNodes[t].on:
				global.correct_answers_no += 1
		else:
			if (column == 3) or (column == 4):
				if tileNodes[t].on:
					global.correct_answers_no += 1
			else:
				if !tileNodes[t].on:
					global.correct_answers_no += 1
		column += 1
		if column == 8:
			column = 0
			row += 1
			

func _on_NextButton_pressed():
	countTiles()
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")


#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
#func _process(delta):
#	global.timer -= delta
#	$Time.text = "Tiempo Restante: {t}s".format({"t":int(global.timer)})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
