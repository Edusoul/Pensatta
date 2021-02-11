extends Node2D

var in1
var in2
var in3



func _ready():
	$FinishedButton.hide()
	pass
	
func _process(delta):
	in1 = get_node("1stPlace").get("inside")
	in2 = get_node("2stPlace").get("inside")
	in3 = get_node("3stPlace").get("inside")
	if in1 and in2 and in3:
		$FinishedButton.show()
	else:
		$FinishedButton.hide()


func _on_FinishedButton_pressed():
	if 	get_node("1stPlace").get("shopNode") == $Shop2:
		if 	get_node("2stPlace").get("shopNode") == $Shop3:
			if 	get_node("3stPlace").get("shopNode") == $Shop1:
				global.answered_correctly = true
	get_tree().change_scene("res://scenes/End.tscn")
