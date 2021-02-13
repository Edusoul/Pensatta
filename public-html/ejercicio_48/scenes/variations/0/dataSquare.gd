extends Node2D

signal showing(id,isData)

#var fading = true
var shown = false #If the card is currently being shown
var uncovered = false #If the card has found its pair 
var id = 0
var data = "null"

func _ready():
	connect("showing",self.get_parent(),"_checkPairs") #When shown, checks for pair
	get_node("CoverAlpha").hide() #CoverAlpha is the hover shader
	get_node("Data/Label").text = data

func _on_Cover_mouse_entered():
	if !shown and !uncovered:
		#The card back can be shaded if not shown
		get_node("CoverAlpha").show()

func _on_Cover_mouse_exited():
	get_node("CoverAlpha").hide()	

func _on_ControlPanel_gui_input(event):
	if global.activeNum < 2:
		if event is InputEventMouseButton and !shown:
			shown = true
			$Cover.hide()
			$CoverAlpha.hide()
			emit_signal("showing",id)
			global.activeNum += 1
		

func _stopShowing(correct):
	if shown:
		if correct: #If the card is shown and the signal says it's correct
			uncovered = true #It will stay uncovered
			global.activeNum = 0
		else: #If the result is wrong
			shown = false
			if !uncovered:
				$Cover.show()
	global.activeNum = 0
