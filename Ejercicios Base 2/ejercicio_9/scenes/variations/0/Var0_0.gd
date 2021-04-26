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
	if $Draggable.position <= Vector2(513, 513):
		$Draggable.position = Vector2(512, 512)
		$Draggable.visible = false
	if $Draggable2.position <= Vector2(513, 513):
		$Draggable2.position = Vector2(512, 512)
		$Draggable2.visible = false	
	if $Draggable3.position <= Vector2(513, 513):
		$Draggable3.position = Vector2(512, 512)
		$Draggable3.visible = false
	if $Draggable4.position >= Vector2(513, 513):
		$Draggable4.position = Vector2(510, 510)
		$Draggable4.visible = false
	if $Draggable5.position >= Vector2(513, 513):
		$Draggable5.position = Vector2(510, 510)
		$Draggable5.visible = false
	if $Draggable6.position >= Vector2(513, 513):
		$Draggable6.position = Vector2(510, 510)	
		$Draggable6.visible = false
