extends Control

signal pressed(id)

var id = 0
var fade = false
var pitch = 1

func _ready():
	find_node("Button").toggle_mode = false
	

func _pressed():	
	fade = false
	$Sound.volume_db = 0
	$Sound.play(0.34)
	$Sound.pitch_scale = pitch
	
	emit_signal("pressed",id)

func _button_up():
	fade = true
	
func autoPress(note,yes):
	if id == note:
		find_node("Button").toggle_mode = true
		if yes:
			get_node("Button").pressed = true
			_pressed()
		else:
			get_node("Button").pressed = false
			_button_up()
	find_node("Button").toggle_mode = false		

func _process(delta):
	if fade:
		$Sound.volume_db = lerp($Sound.volume_db,-70,delta)
