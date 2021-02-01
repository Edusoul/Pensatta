extends Node2D

	
func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_LineEdit_text_changed(new_text):
	if new_text == 	str(int(3)):
		print("acertaste")
	else:
		print("fallaste")	


func _on_LineEdit2_text_changed(new_text):
	if new_text == 	str(int(2)):
		print("acertaste")
	else:
		print("fallaste")


func _on_LineEdit3_text_changed(new_text):
	if new_text == 	str(int(4)):
		print("acertaste")
	else:
		print("fallaste")


func _on_LineEdit4_text_changed(new_text):
	if new_text == 	str(int(1)):
		print("acertaste")
	else:
		print("fallaste")


func _on_Timer_timeout():
	get_tree().change_scene("res://end.tscn")
