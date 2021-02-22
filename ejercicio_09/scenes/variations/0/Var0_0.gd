extends Node2D

#export (PackedScene) var player

var lives = [
	$SpriteLiveOne,
	$SpriteLiveTwo,
	$SpriteLiveThree
]

func _ready():
	find_node("TitleLabel").text = global.title
#	var newKatty = player.instance()
#	add_child(newKatty)
#	newKatty.global_position = get_tree().get_nodes_in_group("sp")[0].global_position
	
func _reload():
	pass

func save()	:
	pass
	
func question():
	randomize()
		
	var questions = [
	$Label,
	$Label2,
	$Label3,
	$Label4,
	$Label5
	]
	return questions[int(rand_range(-1, questions.size()))]

func _on_Area2D_body_entered(body):
	if body.get_name() == "Katty":
		question().visible = true
		global.speed = 0

func _on_Button_pressed():
	question().visible = false
	global.speed = 100
	
func _on_Button2_pressed():
	question().visible = false
	if lives.size() == 3:
		$SpriteLiveOne.visible = false
#		get_tree().reload_current_scene()
	if lives.size() == 2:
		$SpriteLiveTwo.visible = false
	if lives.size() == 1:
		$SpriteLiveThree.visible = false
		get_tree().change_scene("res://scenes/End.tscn")	
	global.speed = 100
	lives.pop_front()

func _on_Button_pressed_label2_true():
	question().visible = false
	global.speed = 100

func _on_Button2_pressed_label2_false():
	question().visible = false
	if lives.size() == 3:
		$SpriteLiveOne.visible = false
#		get_tree().reload_current_scene()
	if lives.size() == 2:
		$SpriteLiveTwo.visible = false
	if lives.size() == 1:
		$SpriteLiveThree.visible = false
		get_tree().change_scene("res://scenes/End.tscn")	
	global.speed = 100
	lives.pop_front()

func _on_Area2D2_body_entered(body):
	if body.get_name() == "Katty":
		question().visible = true
		global.speed = 0

func _on_Area2D3_body_entered(body):
	if body.get_name() == "Katty":
		question().visible = true
		global.speed = 0


func _on_Area2D4_body_entered(body):
	if body.get_name() == "Katty":
		question().visible = true
		global.speed = 0

func _on_Area2D5_body_entered(body):
	if body.get_name() == "Katty":
		question().visible = true
		global.speed = 0


func _on_Area2D6_body_entered(body):
	if body.get_name() == "Katty":
		get_tree().change_scene("res://scenes/End.tscn")
	pass # Replace with function body.


func _on_Button_pressed_label3_true():
	question().visible = false
	global.speed = 100
	pass # Replace with function body.


func _on_Button2_pressed_label3_false():
	question().visible = false
	if lives.size() == 3:
		$SpriteLiveOne.visible = false
#		get_tree().reload_current_scene()
	if lives.size() == 2:
		$SpriteLiveTwo.visible = false
	if lives.size() == 1:
		$SpriteLiveThree.visible = false
		get_tree().change_scene("res://scenes/End.tscn")	
	global.speed = 100
	lives.pop_front()
	pass # Replace with function body.


func _on_Button_pressed_label4_true():
	question().visible = false
	global.speed = 100
	pass # Replace with function body.


func _on_Button2_pressed_label4_false():
	question().visible = false
	if lives.size() == 3:
		$SpriteLiveOne.visible = false
#		get_tree().reload_current_scene()
	if lives.size() == 2:
		$SpriteLiveTwo.visible = false
	if lives.size() == 1:
		$SpriteLiveThree.visible = false
		get_tree().change_scene("res://scenes/End.tscn")	
	global.speed = 100
	lives.pop_front()
	pass # Replace with function body.


func _on_Button_pressed_label5_true():
	question().visible = false
	global.speed = 100
	pass # Replace with function body.


func _on_Button2_pressed_label5_false():
	question().visible = false
	if lives.size() == 3:
		$SpriteLiveOne.visible = false
#		get_tree().reload_current_scene()
	if lives.size() == 2:
		$SpriteLiveTwo.visible = false
	if lives.size() == 1:
		$SpriteLiveThree.visible = false
		get_tree().change_scene("res://scenes/End.tscn")	
	global.speed = 100
	lives.pop_front()
	pass # Replace with function body.
