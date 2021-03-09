extends Node2D

func _ready():
#	find_node("TimeSprite").hide()
	find_node("TitleLabel").text = global.title
	get_node("NextButton").connect("pressed",self,"_on_NextButton_pressed")
	
func _show_tickets():
# Al ubicar una entrada en el vector(676, 363) las demas dejan de ser visibles para el usuario
# siempre que la funcion a realizar tambiem este ubicada en el vector corrrespondiente
	if $Draggable9.position > Vector2(676, 363):
		$Draggable9.position = Vector2(676, 363)
	if $Draggable10.position > Vector2(676, 363):
		$Draggable10.position = Vector2(676, 363)
	if $Draggable11.position > Vector2(676, 363):
		$Draggable11.position = Vector2(676, 363)
	if $Draggable12.position > Vector2(676, 363):
		$Draggable12.position = Vector2(676, 363)
			
func _add():
# Cuando se mueve el objeto entrada se ubica en el vector(676,363)
# para visualizar la respuesta correcta en  pantalla
# toda estas son las acciones de la suma
	if $Draggable.position == Vector2(673, 538)	and $Draggable9.position == Vector2(676, 363):
		$LabelResult.visible = true
		$Draggable10.visible = false
		$LabelTickets.visible = false
	if $Draggable.position == Vector2(673, 538) and $Draggable10.position == Vector2(676, 363):
		$LabelResult2.visible = true
		$Draggable9.visible = false
		$LabelTickets.visible = false
		
func _substration():
	# Acciones para la resta
	if $Draggable2.position == Vector2(673, 538) and $Draggable10.position == Vector2(676, 363):
		$LabelSubtraction2.visible = true
		$Draggable9.visible = false
		$LabelTickets.visible = false
	if $Draggable2.position == Vector2(673, 538) and $Draggable9.position == Vector2(676, 363):
		$LabelSubtraction.visible = true
		$Draggable10.visible = false
		$LabelTickets.visible = false
		
func _division():
	# Acciones para la division
	if $Draggable5.position == Vector2(673, 538) and $Draggable9.position == Vector2(676, 363):
		$Draggable10.visible = false
		$LabelDivision.visible = true
		$LabelTickets.visible = false
	if $Draggable5.position == Vector2(673, 538) and $Draggable10.position == Vector2(676, 363):
		$Draggable9.visible = false
		$LabelDivision2.visible = true
		$LabelTickets.visible = false
		
func _multiplication():
	# Acciones para la multiplicacion
	if $Draggable7.position == Vector2(673,538)	and $Draggable9.position == Vector2(676, 363):
		$Draggable10.visible = false
		$LabelMultiplication.visible = true
		$LabelTickets.visible = false
	if $Draggable7.position == Vector2(673,538)	and $Draggable10.position == Vector2(676, 363):
		$Draggable9.visible = false
		$LabelMultiplication2.visible = true
		$LabelTickets.visible = false

func _show_function():
# Al ubicar una de las funciones en la caja negra las otras dejan de estar visibles para el usuario
	if $Draggable.position > Vector2(672.602905, 537.570007):
		$Draggable.position = Vector2(673, 538)
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true

	if $Draggable2.position > Vector2(672.602905, 537.570007):
		$Draggable.visible = false
		$Draggable2.position = Vector2(673, 538)
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
	if $Draggable3.position > Vector2(672.602905, 537.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.position = Vector2(673, 538)
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.visible = false
#		$Draggable11.visible = false
#		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
	if $Draggable4.position > Vector2(672.602905, 537.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.position = Vector2(673,538)
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.visible = false
#		$Draggable9.visible = false
#		$Draggable10.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
	if $Draggable5.position < Vector2(672.602905, 537.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.position = Vector2(673,538)
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
	if $Draggable6.position < Vector2(680.602905, 580.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.position = Vector2(673,538)
		$Draggable7.visible = false
		$Draggable8.visible = false
#		$Draggable11.visible = false
#		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true

	if $Draggable7.position < Vector2(680.602905, 580.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.position = Vector2(673, 538)
		$Draggable8.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
	if $Draggable8.position < Vector2(680.602905, 580.570007):
		$Draggable.visible = false
		$Draggable2.visible = false
		$Draggable3.visible = false
		$Draggable4.visible = false
		$Draggable5.visible = false
		$Draggable6.visible = false
		$Draggable7.visible = false
		$Draggable8.position = Vector2(673, 538)
#		$Draggable11.visible = false
#		$Draggable12.visible = false
		$NextButton.visible = true
		$Button.visible = true
		
func _concat():
	# Acciones para la concatenacion
	if $Draggable4.position == Vector2(673, 538) and $Draggable9.position == Vector2(676, 363):
		$Draggable10.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$LabelTickets.visible = false
		$LabelConcat.visible = true
	if $Draggable4.position == Vector2(673, 538) and $Draggable10.position == Vector2(676, 363):
		$Draggable9.visible = false
		$Draggable11.visible = false
		$Draggable12.visible = false
		$LabelTickets.visible = false
		$LabelConcat2.visible = true
	if $Draggable4.position == Vector2(673, 538) and $Draggable11.position == Vector2(676, 363):
		$Draggable9.visible = false
		$Draggable10.visible = false
		$Draggable12.visible = false
		$LabelTickets.visible = false
		$LabelConcat3.visible = true
	if $Draggable4.position == Vector2(673, 538) and $Draggable12.position == Vector2(676, 363):
		$Draggable9.visible = false
		$Draggable10.visible = false
		$Draggable11.visible = false
		$LabelTickets.visible = false
		$LabelConcat4.visible = true
		
func _on_NextButton_pressed():
	global.scene += 1
	if global.scene <= global.last_scene:
			get_tree().change_scene(
				"res://scenes/variations/0/Var0_{s}.tscn".format(
					{"s":global.scene}))
	else:
		get_tree().change_scene("res://scenes/End.tscn")
		
func _process(delta):
	_show_tickets()
	_show_function()
	_add()
	_substration()
	_division()
	_multiplication()
	_concat()
	
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/variations/0/Var0_0.tscn")
	pass # Replace with function body.
