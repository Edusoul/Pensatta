extends Node2D

var respuestas = []
	
func _on_Button_pressed():
#	get_tree().change_scene("res://Main.tscn")
	pass


func _on_LineEdit_text_changed(new_text):
	if new_text == 	str(int(3)):
		respuestas.push_back(new_text)
		print(respuestas)	
		


func _on_LineEdit2_text_changed(new_text):
	if new_text == 	str(int(2)):
		respuestas.push_back(new_text)
		print(respuestas)
	


func _on_LineEdit3_text_changed(new_text):
	if new_text == 	str(int(4)):
		respuestas.push_back(new_text)
		print(respuestas)
	
func _on_LineEdit4_text_changed(new_text):
	if new_text == 	str(int(1)):
		respuestas.push_back(new_text)
		print(respuestas)
	


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/End.tscn")
