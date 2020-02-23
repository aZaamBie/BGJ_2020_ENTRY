extends Node2D



func _ready():
	pass # Replace with function body.
func _process(delta):
	$Camera.position = get_global_mouse_position()
	pass
