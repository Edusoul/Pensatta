extends Node2D

var A
var B
var C

func _ready():
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")

func _show():
	$SpriteTicketA.visible = true
	$SpriteTicketB.visible = true
	$SpriteTicketB2.visible = true
	$Sprite.visible = true
	$Sprite2.visible = true
	$Sprite3.visible = true
#	$Sprite4.visible = false
	$SpriteZoneGate.visible = false
	$NextButton.visible = false
	$SpriteGate.visible = false
	$LabelGates.visible = false
	$NextButton2.visible = true
	$NextButton3.visible = true
	
	
func _and():
	if $AND.position > Vector2(804, 341) and $AND.position < Vector2(806, 341):
		$AND.position = Vector2(806, 341)
	if $AND.position == Vector2(806, 341):
		_show()
		$GateAnd.visible = true
		$NAND.visible = false
		$OR.visible = false
		$XOR.visible = false
		$NOR.visible = false
		$NOT.visible = false
		$AND.visible = false
		
func _or()		:
	if $OR.position > Vector2(804, 343) and $OR.position < Vector2(806, 341):
		$OR.position = Vector2(806, 341)
	if $OR.position == Vector2(806, 341):
		_show()
		$GateOr.visible = true
		$NAND.visible = false
		$AND.visible = false
		$XOR.visible = false
		$NOR.visible = false
		$NOT.visible = false
		$OR.visible = false
		
		
func _nand():
	if $NAND.position > Vector2(804, 343) and $NAND.position < Vector2(806, 341):
		$NAND.position = Vector2(806, 341)
	if $NAND.position == Vector2(806, 341):
		_show()
		$GateNand.visible = true
		$AND.visible = false
		$OR.visible = false
		$XOR.visible = false
		$NOR.visible = false
		$NOT.visible = false
		$NAND.visible = false
		
		
func _xor():
	if $XOR.position > Vector2(804, 343) and $XOR.position < Vector2(806, 341):
		$XOR.position = Vector2(806, 341)
	if $XOR.position == Vector2(806, 341):
		_show()
		$GateXor.visible = true
		$NAND.visible = false
		$OR.visible = false
		$AND.visible = false
		$NOR.visible = false
		$NOT.visible = false
		$XOR.visible = false
		
		
func _nor():
	if $NOR.position > Vector2(804, 343) and $NOR.position < Vector2(806, 341):
		$NOR.position = Vector2(806, 341)
	if $NOR.position == Vector2(806, 341):
		_show()
		$GateNor.visible = true
		$NAND.visible = false
		$OR.visible = false
		$XOR.visible = false
		$AND.visible = false
		$NOT.visible = false
		$NOR.visible = false
		
		
func _not():
	if $NOT.position > Vector2(803, 343) and $NOT.position < Vector2(806, 341):
		$NOT.position = Vector2(806, 341)
	if $NOT.position == Vector2(806, 341):
		$SpriteTicketA2.visible = true
		$SpriteTicketB2.visible = true
		$Sprite5.visible = true
		$Sprite3.visible = true
		$Sprite4.visible = false
		$SpriteZoneGate.visible = false
		$NextButton.visible = false
		$SpriteGate.visible = false
		$NAND.visible = false
		$OR.visible = false
		$XOR.visible = false
		$AND.visible = false
		$NOR.visible = false
		$LabelGates.visible = false
		$NextButton2.visible = true
		$NextButton3.visible = true
		$GateNot.visible = true
		$NOT.visible = false
		$Sprite4.visible = true
		
func _physics_process(delta):
	_and()
	_nand()
	_or()
	_xor()
	_nor()
	_not()
	if $SpriteTicketB2/LabelAnswer.text == "0" or $SpriteTicketB2/LabelAnswer.text == "1":
		$NextButton.visible = true
		$NextButton2.visible = false
	
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")



func _on_LineEdit_text_changed(new_text):
	if new_text == str(int(0)):
		A = new_text
	if new_text == str(int(1)):
		A = new_text	
	pass # Replace with function body.
	
func _on_LineEdit3_text_changed(new_text):
	if new_text == str(int(0)):
		C = new_text
	if new_text == str(int(1)):
		C = new_text	
	pass # Replace with function body.

func _on_LineEdit2_text_changed(new_text):
	if new_text == str(int(0)):
		B = new_text
	if new_text == str(int(1)):
		B = new_text
	pass # Replace with function body.


func _on_NextButton3_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
	
func _on_NextButton2_pressed():
# AND gate responses
	if $GateAnd.visible == true and A == str(0) and B == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateAnd.visible == true and A == str(0) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateAnd.visible == true and A == str(1) and B == str(0):
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateAnd.visible == true and A == str(1) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "1"
		
# NAND gate responses
	if $GateNand.visible == true and A == str(0) and B == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateNand.visible == true and A == str(0) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateNand.visible == true and A == str(1) and B == str(0):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateNand.visible == true and A == str(1) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"

		
# OR gate responses
	if $GateOr.visible == true and A == str(0) and B == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateOr.visible == true and A == str(0) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateOr.visible == true and A == str(1) and B == str(0):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateOr.visible == true and A == str(1) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"
	

# NOR gate responses
	if $GateNor.visible == true and A == str(0) and B == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateNor.visible == true and A == str(0) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateNor.visible == true and A == str(1) and B == str(0):
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateNor.visible == true and A == str(1) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"
	
		
# XOR gate responses
	if $GateXor.visible == true and A == str(0) and B == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "0"
	elif $GateXor.visible == true and A == str(0) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateXor.visible == true and A == str(1) and B == str(0):
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateXor.visible == true and A == str(1) and B == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"

		
# NOT gate responses
	if $GateNot.visible == true and C == str(0):
		$SpriteTicketB2/LabelAnswer.visible = true
		$SpriteTicketB2/LabelAnswer.text = "1"
	elif $GateNot.visible == true and C == str(1):
		$SpriteTicketB2/LabelAnswer.text = "0"


