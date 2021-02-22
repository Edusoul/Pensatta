extends Panel

signal toggled(correct)

export var positive = true
export var password = "asdf"
var answeredBefore = false
var previousAnswer = false

func _ready():
	$botonInsecure.show()
	$botonSecure.show()
	find_node("Label2").text = password
	find_node("Secure").hide()
	find_node("Insecure").hide()

func _checkSecurity(guess):
	if answeredBefore: # If already answered
		find_node("Secure").hide() # First hide guess color
		find_node("Insecure").hide()
		if previousAnswer: # If previous answer was right
			global.answered_correctly -= 1 # Remove point
		global.answered -= 1 # Remove point
			
	if guess and positive: # If guess was positive as well as option
		global.answered_correctly += 1 # Award point
		previousAnswer = true # Mark as answered correctly
	elif guess != positive: # If guess was wrong
		previousAnswer = false # Mark accordingly
	global.answered += 1 # Remove point	
	answeredBefore = true # Mark as answered before
	emit_signal("toggled")
	
	if guess:
		find_node("Secure").show()
	elif !guess:
		find_node("Insecure").show()
	
	
	$botonInsecure.hide()
	$botonSecure.hide()

func stringRepeat(string0,times):
	var string = ""
	for t in range(times):
		string += string0
	return string

