extends Node2D

signal press(note,yes)

var whites = preload("res://scenes/WhiteKey.tscn")
var blacks = preload("res://scenes/BlackKey.tscn")

var song1 = [7,11,12,11,10,9,8,7] # Estrellita :3
var score = 0
var counter1 = 0
var counter2 = 0
var gameOn = false
var playing = false

var keyList = []

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	get_node("NextButton").hide()
	$TryAgain.hide()
	
	spawnKeys()
	
func playSong():
	$TryAgain.hide()
	gameOn = true
	playing = true
	for note in song1.slice(0,score):
		for i in range(2):
			emit_signal("press",note,true)
			yield(get_tree().create_timer(0.5), "timeout")
			emit_signal("press",note,false)
			yield(get_tree().create_timer(0.1), "timeout")
	playing = false
			
func check(id):
	if gameOn and !playing:
		if id == song1[counter1]:
			counter2 += 1
			if counter2 == 2:
				counter2 = 0
				counter1 += 1
				if counter1 == score+1:
					score += 1
					counter1 = 0
					$Score.text = "Puntaje: " + str(score)
					yield(get_tree().create_timer(1.0), "timeout")
					playSong()
					
					if score == len(song1):
						global.won = true
		else:
			counter1 = 0
			counter2 = 0
			score = 0
			$TryAgain.show()
			$Score.text = "Puntaje: " + str(score)
			get_node("NextButton").show()
			
func spawnKeys():
	var key
	var c = 0 # Note counter
	var t = 0 # Octave counter
	for i in range(23):
		key = whites.instance()
		
		if (c==6): c -= 1
		if (c==13): 
			c = 0
			t += 1
		
		key.pitch = pow(2,t)*pow(2.0,c/12.0)/4
		key.id = i
		
		key.connect("pressed",self,"check")
		connect("press",key,"autoPress")
		get_node("WhitesContainer").add_child(key)
		keyList.append(key)
		c += 2
	c = 0
	t = 0
	for i in range(22):
		key = blacks.instance()
		get_node("BlacksContainer").add_child(key)
		if (c==4) or (c==11):
			key.find_node("Node2D").z_index = -1
			c -= 1
		
		key.pitch = pow(2,t)*pow(2.0,1/12.0 + c/12.0)/4
		key.id = -1
		
		c += 2
		if (c==12):
			c = 0
			t += 1

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


