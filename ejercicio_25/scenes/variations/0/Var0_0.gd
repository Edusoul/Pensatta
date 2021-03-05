extends Node2D

var options = preload("res://scenes/OptionButton.tscn") # Import button script
var shadows = preload("res://scenes/Shadow.tscn") # Import shadow script

var labels = [	"A. Asegurar su información personal.",
				"B. Identificar qué contenido publicado por ella no es adecuado.",
				"C. Eliminar el contenido publicado no adecuado de sus redes sociales.",
				"D. Identificar perfiles de las personas que perpetúan los ataques mencionados.",
				"E. Bloquear los perfiles de las personas que perpetúan los ataques mencionados.",
				"F. Presentar ante su público en línea disculpas por la publicación de contenido no adecuado",
				"G. Asegurar constantemente su información y realizar un control adecuado del contenido publicado."]

signal update(areaIn,areaFree) 
# This signal alerts all the buttons which area is being entered and which
# area is currently free.

var areaFree # Will hold the free node

func _ready():
	randomize()
	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	
	labels.shuffle() # Random order, you can comment this with Ctrl K
	
	var N = len(labels) # Number of labels
	for i in range(N):
		var button = options.instance()
		var shadow = shadows.instance()
		
		button.text = labels[i]
		
		var pos = Vector2(50,i*500/N + 200)
		button.rect_global_position = pos
		shadow.rect_global_position = pos
		
		button.connect("freed",self,"_freed") # When button says "free" execute _freed
		button.connect("linked",self,"_register") # Same but with linked
		connect("update",button,"_update")
		button.inside = shadow # Initial parent of button is the shadow it was born with
		
		add_child(shadow)
		add_child(button)
		
func _freed(area):
	areaFree = area 
	
func _register(areaIn):
	emit_signal("update",areaIn,areaFree)

func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")

# Wait like function
#yield(get_tree().create_timer(1.0), "timeout")

#UNCOMMENT WITH CTRL+K IF THE SCENE REQUIRES A GLOBAL TIMER
#THE SCENE WILL REQUIRE A $Time LABEL NODE
#func _process(delta):
#	find_node("TimeSprite").show()	
#	global.timer -= delta
#	find_node("Time").text = "{mm}:{ss}".format({
#		"ss":"%02.0f" % int(fmod(global.timer,60)),
#		"mm":int(global.timer/60)
#		})
#	if global.timer < 0:
#		get_tree().change_scene("res://scenes/End.tscn")
#		global.timeout = true
