extends Node2D

onready var outline_yellow_shader = \
	preload("res://assets/shaders/outline_yellow.shader");
onready var outline_blue_shader = \
	preload("res://assets/shaders/outline_blue.shader");
	
var zones_entered = {
	"Board": false
}
var zones_clicked = {
	"Board": false
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		for zone in zones_entered.keys():
			if zones_entered[zone]:
				$Computer.get_node(zone).get_node(zone).material.shader = \
					outline_blue_shader
				zones_entered[zone] = false
				zones_clicked[zone] = true

func _on_Board_mouse_exited():
	if !zones_clicked["Board"]:
		zones_entered["Board"] = false
		$Computer/Board/Board.material.shader = null

func _on_Board_mouse_entered():
	if !zones_clicked["Board"]:
		zones_entered["Board"] = true
		$Computer/Board/Board.material.shader = outline_yellow_shader


func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_1.tscn")
