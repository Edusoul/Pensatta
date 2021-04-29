extends Node2D

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")


func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")

# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
#func _process(delta):
#	find_node("TimeSprite").show()	
#	global.timer -= delta
#	find_node("Time").text = "{mm}:{ss}".format({
#		"ss":"%02.0f" % int(fmod(global.timer,60)),
#		"mm":int(global.timer/60)
#		})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
func _physics_process(delta):
	if global.correct_answers_no.size() == 4:
		get_tree().change_scene("res://scenes/End.tscn")
	if global.correct_answers_no.size() == 3 and global.incorrect_answers_no.size() == 1:
		get_tree().change_scene("res://scenes/End.tscn")
	if global.correct_answers_no.size() == 2 and global.incorrect_answers_no.size() == 2:
		get_tree().change_scene("res://scenes/End.tscn")
	if global.correct_answers_no.size() == 1 and global.incorrect_answers_no.size() == 3:
		get_tree().change_scene("res://scenes/End.tscn")		
func _on_AnswerOne_pressed():
	$AnswerOne2.visible = true
	$AnswerOne.visible = false
	if $AnswerOne2.visible == true:
		global.correct_answers_no.push_back(1)
		print(global.correct_answers_no)
func _on_AnswerOne2_pressed():
	$AnswerOne.visible = true
	$AnswerOne2.visible = false
	if $AnswerOne.visible == true:
		global.correct_answers_no.erase(1)
		print(global.correct_answers_no)	



func _on_AnswerTwo_pressed():
	$AnswerTwo.visible = false
	$AnswerTwo2.visible = true
	if $AnswerTwo2.visible == true:
		global.incorrect_answers_no.push_back(5)
		print(global.incorrect_answers_no)
func _on_AnswerTwo2_pressed():
	$AnswerTwo.visible = true
	$AnswerTwo2.visible = false	
	if $AnswerTwo.visible == true:
		global.incorrect_answers_no.erase(5)
		print(global.incorrect_answers_no)

func _on_AnswerThree_pressed():
	$AnswerThree.visible = false
	$AnswerThree2.visible = true
	if $AnswerThree2.visible == true:
		global.correct_answers_no.push_back(2)
		print(global.correct_answers_no)
func _on_AnswerThree2_pressed():
	$AnswerThree.visible = true
	$AnswerThree2.visible = false
	if $AnswerThree.visible == true:
		global.correct_answers_no.erase(2)
		print(global.correct_answers_no)	



func _on_AnswerFour_pressed():
	$AnswerFour.visible = false
	$AnswerFour2.visible = true
	if $AnswerFour2.visible == true:
		global.correct_answers_no.push_back(3)
		print(global.correct_answers_no)	
func _on_AnswerFour2_pressed():
	$AnswerFour.visible = true
	$AnswerFour2.visible = false
	if $AnswerFour.visible == true:
		global.correct_answers_no.erase(3)
		print(global.correct_answers_no)

func _on_AnswerFive_pressed():
	$AnswerFive.visible = false
	$AnswerFive2.visible = true
	if $AnswerFive2.visible == true:
		global.incorrect_answers_no.push_back(6)
		print(global.incorrect_answers_no)	
func _on_AnswerFive2_pressed():
	$AnswerFive.visible = true
	$AnswerFive2.visible = false
	if $AnswerFive.visible == true:
		global.incorrect_answers_no.erase(6)
		print(global.incorrect_answers_no)


func _on_AnswerSix_pressed():
	$AnswerSix.visible = false
	$AnswerSix2.visible = true
	if $AnswerSix2.visible == true:
		global.correct_answers_no.push_back(4)
		print(global.correct_answers_no)	
func _on_AnswerSix2_pressed():
	$AnswerSix.visible = true
	$AnswerSix2.visible = false
	if $AnswerThree2.visible == true:
		global.correct_answers_no.erase(4)
		print(global.correct_answers_no)	


func _on_Answerseven_pressed():
	$Answerseven.visible = false
	$Answerseven2.visible = true
	if $Answerseven2.visible == true:
		global.incorrect_answers_no.push_back(7)
		print(global.incorrect_answers_no)
func _on_Answerseven2_pressed():
	$Answerseven.visible = true
	$Answerseven2.visible = false
	if $Answerseven.visible == true:
		global.incorrect_answers_no.erase(7)
		print(global.incorrect_answers_no)
