extends Node2D

const dataSquare = preload("res://scenes/variations/0/dataSquare.tscn")

var rightAnswers = 0

var dataTypeList = ["A","B","C","D"]
var dataList = ["a","b","c","d"]
var idList = range(len(dataList))

var howManyActive = 0 #Number of active boxes


func _ready():
	for i in idList:#reordenada aleatoriamente
		#instancing each dataType with its id
		var card = dataSquare.instance()
		card.id = idList[i]
		card.data = dataList[i]
		card.isData = true
		card.connect("showing",self,"_checkPairs")
		self.add_child(card)
		
	for i in idList:#reordenada aleatoriamente
		var card = dataSquare.instance()
		card.id = idList[i]
		card.data = dataTypeList[i]
		card.isData = false
		card.connect("showing",self,"_checkPairs")
		self.add_child(card)
		
func _checkPairs():
	print("la buena")
		
func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_1.tscn")
