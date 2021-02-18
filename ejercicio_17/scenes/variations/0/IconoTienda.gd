extends TextureRect

var dragPosition = null
var pos = rect_global_position
var getBack
var i

func _ready():
	i = 100
	getBack = false
	dragPosition = null
	$Node2D/Info.hide()

func _on_Tienda_gui_input(event):
	if !getBack:
		if event is InputEventMouseButton:
			if event.pressed:
				dragPosition = get_global_mouse_position() - rect_global_position
			else:
				dragPosition = null
		if event is InputEventMouseMotion:
			if dragPosition:
				rect_global_position = get_global_mouse_position() - dragPosition


func _on_Tienda_mouse_entered():
	$Node2D/Info.show()
	

func _on_Tienda_mouse_exited():
	$Node2D/Info.hide()

func _on_VisibilityNotifier2D_screen_exited():
	getBack = true
	
func _physics_process(delta):
	if getBack:
		rect_global_position = rect_global_position.linear_interpolate(pos,10*delta)
		i += -1
		if i==0: _ready()
		
