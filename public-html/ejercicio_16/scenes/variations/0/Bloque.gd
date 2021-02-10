extends Panel

signal toggled(correct)

export var secure = true
export var password = "asdf"

func _ready():
	$Label2.text = password
	pass # Replace with function body.

func _checkSecurity(guess):
	if guess == secure:
		emit_signal("toggled",true)
		
	else:
		emit_signal("toggled",false)	
	hide()
