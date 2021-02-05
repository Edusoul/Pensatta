extends Label

var label
var make

func _ready():
	label = Label.new()
	label.text = "Mother Board"
	make = true
	if make:
		self.add_child(label)
		make = false
	else:
		print("Esto sirvio")	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
