extends Node2D
var speed = 20
var rotation_init = false
var rng = RandomNumberGenerator.new()
var my_random_number

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	rng.randomize()
	my_random_number = rng.randf_range(-10.0, 10.0)	


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")

func _physics_process(delta):
	if rotation_init:
		$wheel.rotation +=  speed * delta
		if $wheel.rotation > 20:
			speed = 0
			$wheel.rotation_degrees = my_random_number * 12
			print($wheel.rotation_degrees)
			if $wheel.rotation_degrees <= 50 and $wheel.rotation_degrees > 0:
				$QuestionsOne.visible = true
			if $wheel.rotation_degrees > 50:
				$Questionstwo.visible = true
			if $wheel.rotation_degrees < 0:
				$QuestionsThree.visible = true
				
func _on_Button_pressed():
	$Sprite2.visible = false
	$Sprite3.visible = false
	$Sprite4.visible = false
	$Label.visible = false
	rotation_init = true

func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")


func _on_Button3_pressed():
	$QuestionsOne/Button7.visible = true
	$QuestionsOne/Button3.visible = false
	$QuestionsOne/Button4.visible = false
	$QuestionsOne/Button5.visible = false
	$QuestionsOne/Button6.visible = false
	


func _on_Button4_pressed():
	$QuestionsOne/Button8.visible = true
	$QuestionsOne/Button3.visible = false
	$QuestionsOne/Button4.visible = false
	$QuestionsOne/Button5.visible = false
	$QuestionsOne/Button6.visible = false
	


func _on_Button5_pressed():
	$QuestionsOne/Button9.visible = true
	$QuestionsOne/Button3.visible = false
	$QuestionsOne/Button4.visible = false
	$QuestionsOne/Button5.visible = false
	$QuestionsOne/Button6.visible = false	


func _on_Button6_pressed():
	$QuestionsOne/Button10.visible = true
	$QuestionsOne/Button3.visible = false
	$QuestionsOne/Button4.visible = false
	$QuestionsOne/Button5.visible = false
	$QuestionsOne/Button6.visible = false


func _on_Button3Two_pressed():
	$Questionstwo/Button7Two.visible = true
	$Questionstwo/Button3Two.visible = false
	$Questionstwo/Button4Two.visible = false
	$Questionstwo/Button5Two.visible = false
	$Questionstwo/Button6Two.visible = false

func _on_Button4two_pressed():
	$Questionstwo/Button8Two.visible = true
	$Questionstwo/Button3Two.visible = false
	$Questionstwo/Button4Two.visible = false
	$Questionstwo/Button5Two.visible = false
	$Questionstwo/Button6Two.visible = false


func _on_Button5Two_pressed():
	$Questionstwo/Button9Two.visible = true
	$Questionstwo/Button3Two.visible = false
	$Questionstwo/Button4Two.visible = false
	$Questionstwo/Button5Two.visible = false
	$Questionstwo/Button6Two.visible = false


func _on_Button6Two_pressed():
	$Questionstwo/Button10Two.visible = true
	$Questionstwo/Button3Two.visible = false
	$Questionstwo/Button4Two.visible = false
	$Questionstwo/Button5Two.visible = false
	$Questionstwo/Button6Two.visible = false


func _on_Button3Three_pressed():
	$QuestionsThree/Button7Three.visible = true
	$QuestionsThree/Button3Three.visible = false
	$QuestionsThree/Button4Three.visible = false
	$QuestionsThree/Button5Three.visible = false
	$QuestionsThree/Button6Three.visible = false
	


func _on_Button4Three_pressed():
	$QuestionsThree/Button8Three.visible = true
	$QuestionsThree/Button3Three.visible = false
	$QuestionsThree/Button4Three.visible = false
	$QuestionsThree/Button5Three.visible = false
	$QuestionsThree/Button6Three.visible = false	


func _on_Button5Three_pressed():
	$QuestionsThree/Button9Three.visible = true
	$QuestionsThree/Button3Three.visible = false
	$QuestionsThree/Button4Three.visible = false
	$QuestionsThree/Button5Three.visible = false
	$QuestionsThree/Button6Three.visible = false


func _on_Button6Three_pressed():
	$QuestionsThree/Button10Three.visible = true
	$QuestionsThree/Button3Three.visible = false
	$QuestionsThree/Button4Three.visible = false
	$QuestionsThree/Button5Three.visible = false
	$QuestionsThree/Button6Three.visible = false	
