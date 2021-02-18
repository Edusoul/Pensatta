extends Node2D


func _on_LineEdit_text_changed(new_text):
	if new_text == 	str(int(3)):
		global.answer_correctly.push_back(new_text)

func _on_LineEdit2_text_changed(new_text):
	if new_text == 	str(int(2)):
		global.answer_correctly.push_back(new_text)
		
func _on_LineEdit3_text_changed(new_text):
	if new_text == 	str(int(4)):
		global.answer_correctly.push_back(new_text)
		
func _on_LineEdit4_text_changed(new_text):
	if new_text == 	str(int(1)):
		global.answer_correctly.push_back(new_text)
		

func _on_Button_pressed():
	global.timer_on = true
	$SpriteAnswers/SpriteLine.visible = true
	$SpriteAnswers/SpriteLine_2.visible = true
	$SpriteAnswers/SpriteLine_3.visible = true
	$SpriteAnswers/SpriteLine_4.visible = true
	
