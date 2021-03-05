extends Node2D

var is_active
var sprite
var life = 100
var vel
var initial_pos
var movement_constant

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = get_node("bacteria")
	
	randomize()
	var x_vel = randf() * 100 - 50
	randomize()
	var y_vel = randf() * 100 - 50
	vel = Vector2(x_vel, y_vel)
	initial_pos = position
	randomize()
	movement_constant = randf() * 2 + 3
	
func _physics_process(delta):
	var acc = - (position - initial_pos) * movement_constant
	vel = vel + acc * delta
	position = position + vel * delta
	
func _process(delta):
	var life_decrease = 0
	for white_cell in get_children():
		if white_cell.name != "bacteria":
			white_cell.modulate.a = white_cell.get_children()[0].time_left / 4.0
			life_decrease += white_cell.modulate.a * 0.01
		
		life -= life_decrease
		sprite.modulate.a = life / 100

func create_blood_cells():
	var sprite = Sprite.new()
	sprite.texture = load("res://assets/img/variations/0/whitecell.png")
	randomize()
	var pos_x = randf() * 100 + 20
	randomize()
	var pos_y = randf() * 120 + 20
	sprite.position = Vector2(pos_x, pos_y)
	sprite.scale = Vector2(0.35, 0.35)
	add_child(sprite)
	var cell_timer = Timer.new()
	cell_timer.wait_time = 4.0
	sprite.add_child(cell_timer)
	cell_timer.connect("timeout", self, "_on_sprite_timer_timeout", [sprite])
	cell_timer.start()

func _on_sprite_timer_timeout(sprite):
	sprite.queue_free()
	

func make_active():
	sprite.show()
	life = 100
	
func make_inactive():
	sprite.hide()
