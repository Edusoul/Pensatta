extends Node2D
var life_bar
var switch_direction_frames = 150
var slider_acc = 10
var temp_slider
var temp_slider_vel = {"value": 0}
var clean_slider
var clean_slider_vel = {"value": 0}
var light_slider
var light_slider_vel = {"value": 0}
var oxy_slider
var oxy_slider_vel = {"value": 0}
var food_slider
var food_slider_vel = {"value": 0}
var frames_count = 0

var speed_decrease

func _ready():
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	temp_slider = get_node("Node2D/HSlider")
	clean_slider = get_node("Node2D/HSlider2")
	light_slider = get_node("Node2D/HSlider3")
	oxy_slider = get_node("Node2D/HSlider4")
	food_slider = get_node("Node2D/HSlider5")
	life_bar = get_node("ProgressBar")
	
	
	
func _process(delta):
	frames_count += 1
	var life_decrease = 0
	life_decrease += slider_update(temp_slider, temp_slider_vel, delta, 75, 25)
	life_decrease += slider_update(clean_slider, clean_slider_vel, delta, 101, 50)
	life_decrease += slider_update(light_slider, light_slider_vel, delta, 75, 25)
	life_decrease += slider_update(oxy_slider, oxy_slider_vel, delta, 75, 25)
	life_decrease += slider_update(food_slider, food_slider_vel, delta, 75, 25)
	life_bar.value -= life_decrease
	
	if life_bar.value <= 0 :
		global.success = false
		get_tree().change_scene("res://scenes/End.tscn")
	
	find_node("TimeSprite").show()	
	global.timer -= delta
	find_node("Time").text = "{mm}:{ss}".format({
		"ss":"%02.0f" % int(fmod(global.timer,60)),
		"mm":int(global.timer/60)
		})
	if global.timer < 0:
		if life_bar.value <= 0:
			global.success = false
		else:
			global.success = true
		get_tree().change_scene("res://scenes/End.tscn")
	
func slider_update(slider, slider_vel, delta, max_val, min_val):
	if frames_count % switch_direction_frames == 0:
		randomize()
		slider_vel["value"] = randf() * 100 - 50
	if slider_vel["value"] > 0:
		slider_acc = -abs(slider_acc)
	elif slider_vel["value"] <= 0:
		slider_acc = abs(slider_acc)
	slider_vel["value"] += slider_acc*delta
	slider.set_value(slider.value + slider_vel["value"]*delta)
	
	if slider.value > max_val or slider.value < min_val:
		return 0.02
	return 0
	
		
# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")
