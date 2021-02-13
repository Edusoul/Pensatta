extends Node2D

const dataSquare = preload("res://scenes/variations/0/dataSquare.tscn")

signal dontShow(answer) # Signal to hide the unpaired cards

export var random = false # Controls if positions will be random
var rightAnswers = 0 # Counts right answers
var actives = [] # Active cards ID list


func _ready():
	$NextButton.hide()
	
	randomize()
	var dataTypeList = ["A","B","C","D"] #Data Types
	var dataList = ["a","b","c","d"] #Data
	var idList = range(len(dataList)) #IDs
	var locList = _locList() # Locations
	
	if random: #Shuffles the lists if randomness is selected
		locList.shuffle()
		idList.shuffle()
		
	var j = 0
	for i in idList:
		var card = dataSquare.instance() #Instances cards
		card.id = idList[i] #ID assign
		card.data = dataList[i] # Name assign
		card.position = Vector2(locList[j][0],locList[j][1]) #Position added
		self.add_child(card)
		connect("dontShow",card,"_stopShowing") #Connected with signal to deactivate
		j += 1
	
	for i in idList:
		var card = dataSquare.instance()
		card.id = idList[i]
		card.data = dataTypeList[i]
		card.position = Vector2(locList[j][0],locList[j][1])
		self.add_child(card)
		connect("dontShow",card,"_stopShowing")
		j += 1

func _process(delta):
	if rightAnswers < 4:
		$Label2.text = "Tiempo Restante: %s segundos "%int($Timer.time_left)
	else:
		$NextButton.show()
		
func _checkPairs(id):
	# This function is called everytime a card is clicked
	actives.append(id) # Appends card ID when pressed
	var correct = false # Sends if the guess was right oder nicht
	if len(actives) >= 2: # If two cards are active, checks for matching ID
		if actives[-2] == actives[-1]:
			rightAnswers += 1
			$Label.text = "Parejas Encontradas: " + str(rightAnswers)
			correct = true
		yield(get_tree().create_timer(1.0), "timeout")
		emit_signal("dontShow",correct) #Orders all unmatched cards to hide
		actives.clear()
		global.activeNum = 0
		
func _on_NextButton_pressed():
	if rightAnswers == 4: global.answered_correctly = true
	get_tree().change_scene("res://scenes/End.tscn")

func _timeout():
	$NextButton.show()
	global.activeNum = 3
	
func _locList():
	# A chunk of code for generating the array of positions
	var yini = 180 #Initial Vertical position	
	var locList = []
	var j = 0
	for k in range(8):
		locList.append([180+j*300,yini])
		if k == 3:
			j = -1
			yini += 270
		j += 1
		
	return locList
