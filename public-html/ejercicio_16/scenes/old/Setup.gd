extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var variation_number = JavaScript.eval(
		"""
		var getParams = function (url) {
			var params = {};
			var parser = document.createElement('a');
			parser.href = url;
			var query = parser.search.substring(1);
			var vars = query.split('&');
			for (var i = 0; i < vars.length; i++) {
				var pair = vars[i].split('=');
				if (pair[0]) {
					params[pair[0]] = decodeURIComponent(pair[1]);
				}
			}
			return params;
		};
		var urlParams = getParams(window.location.href)
		if ('variation' in urlParams) {
			urlParams['variation'];
		} else {
			null;
		}
		"""
	)
	
	if variation_number:
		global.variation_number = variation_number
	else:
		global.variation_number = global.pick_random_variation_number()
		
	get_tree().change_scene("res://scenes/Ready.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
