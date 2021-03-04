extends Node2D

var bacterias = []
var active_bacteria_index
var there_is_active_bacteria = false
var life_bar
var bacterias_killed = 0
var no_more_bacterias = false

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	get_node("NextButton").hide()
	life_bar = get_node("ProgressBar")
	bacterias = get_node("Node2D/ColorRect2/ColorRect3/Bacterias").get_children()
	for bacteria in bacterias:
		bacteria.make_inactive()	
	
func _physics_process(_delta):
	if bacterias_killed == 8:
		get_node("NextButton").show()
		no_more_bacterias = true
	
	if (!there_is_active_bacteria and !no_more_bacterias):
		randomize()
		if randi() % 1000 < 8:
			randomize()
			var new_bacteria_index = randi() % len(bacterias)
			while(new_bacteria_index == active_bacteria_index):
				randomize()
				new_bacteria_index = randi() % len(bacterias)
			active_bacteria_index = new_bacteria_index
			there_is_active_bacteria = true
			bacterias[active_bacteria_index].make_active()
	elif !no_more_bacterias:
		if (bacterias[active_bacteria_index].life <= 0):
			there_is_active_bacteria = false
			bacterias_killed += 1
		life_bar.value -= bacterias[active_bacteria_index].modulate.a * 0.04
		
	if life_bar.value <= 0:
		global.success = false
		get_tree().change_scene("res://scenes/End.tscn")
		
		
func _on_AttackButton_pressed():
	if there_is_active_bacteria:
		bacterias[active_bacteria_index].create_blood_cells()
	
	
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		global.success = true
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
