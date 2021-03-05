extends Node2D

var ball
var phys_mat = PhysicsMaterial.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	ball = get_node("RigidBody2D")
	phys_mat.bounce = 0.6
	ball.set_physics_material_override(phys_mat)
	
#func _physics_process(delta):
#	ball.set_applied_force(Vector2(1))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
