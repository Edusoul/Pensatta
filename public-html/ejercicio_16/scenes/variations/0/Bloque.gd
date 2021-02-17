extends Panel

signal toggled(correct)

export var secure = true
export var password = "asdf"
var answeredBefore = false
var previousAnswer = false

func _ready():
	find_node("Label2").text = stringRepeat("*",len(password))
	find_node("Secure").hide()
	find_node("Insecure").hide()
	$botonInsecure.hide()
	$botonSecure.hide()

func _checkSecurity(guess):
	if answeredBefore: # If already answered
		find_node("Secure").hide() # First hide guess color
		find_node("Insecure").hide()
		if previousAnswer: # If previous answer was right
			global.answered_correctly -= 1 # Remove point
			
	if guess == secure: # If guess was the same as security answer
		global.answered_correctly += 1 # Award point
		previousAnswer = true # Mark as answered correctly
	elif guess != secure: # If guess was wrong
		previousAnswer = false # Mark accordingly
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

func _mouse_entered():
	find_node("Label2").text = password
	$botonInsecure.show()
	$botonSecure.show()
