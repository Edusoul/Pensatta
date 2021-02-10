extends Area2D

func _ready():
	$Panel2.hide()

func _on_FirstPlace_area_shape_entered(area_id, area, area_shape, self_shape):
	$Panel2.show()

func _on_FirstPlace_area_shape_exited(area_id, area, area_shape, self_shape):
	$Panel2.hide()
