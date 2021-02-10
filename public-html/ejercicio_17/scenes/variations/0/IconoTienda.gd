extends TextureRect

var dragPosition = null

func _ready():
	$Info.hide()

func _on_Tienda_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			dragPosition = get_global_mouse_position() - rect_global_position
		else:
			dragPosition = null
	if event is InputEventMouseMotion and dragPosition:
		rect_global_position = get_global_mouse_position() - dragPosition


func _on_Tienda_mouse_entered():
	$Info.show()

func _on_Tienda_mouse_exited():
	$Info.hide()
