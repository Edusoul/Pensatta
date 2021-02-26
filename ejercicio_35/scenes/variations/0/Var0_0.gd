extends Node2D

signal restartTimer

var pepas = [
	preload("res://scenes/snake/Bueno.tscn"),
	preload("res://scenes/snake/Bueno2.tscn"),
	preload("res://scenes/snake/Bueno3.tscn"),
	preload("res://scenes/snake/Bueno4.tscn"),
	preload("res://scenes/snake/Malo.tscn")
]
var pepa = null
var game_over = false

# Random indexes for new_fruit()
var k
var x
var y

func _ready():
	new_fruit()
	find_node("Snek").moving = false
	find_node("Snek").connect("ate",self,"new_fruit")
	find_node("Snek").connect("ded",self,"end_game")
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	yield(get_tree().create_timer(1.0), "timeout")
	find_node("Snek").moving = true	
	find_node("Timer").connect("timeout",self,"new_fruit")
		
func new_fruit():
	find_node("Timer").start()
	
	randomize()
	k = rand_range(0,5)
	x = rand_range(0,1)
	y = rand_range(0,1)
	
	if pepa:
		pepa.queue_free()
	pepa = pepas[k].instance()
	get_node("Board").add_child(pepa)
	pepa.position = Vector2(792*x+594,432*y+234)
	
func end_game():
	game_over = true
	get_tree().change_scene("res://scenes/End.tscn")

func _area_exited(area):
	if area.get_name() == "Head" and !game_over:
		get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")

# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
func _process(delta):
	find_node("TimeSprite").show()	
	global.timer -= delta
	find_node("Time").text = "{mm}:{ss}".format({
		"ss":"%02.0f" % int(fmod(global.timer,60)),
		"mm":int(global.timer/60)
		})
	if global.timer < 0:
		get_tree().change_scene("res://scenes/End.tscn")
		global.timeout = true

