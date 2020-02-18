extends KinematicBody2D

# variables
export var Speed = 0
export var MaxSpeed = 0
var direction = Vector2()

func _ready():
	pass

func _process(delta):
	look_at(get_global_mouse_position()) # looks at mouse
	
	# keyboard movement
	if Input.is_action_pressed("UP"):
		direction += Vector2(0,-1)
	if Input.is_action_pressed("DOWN"):
		direction += Vector2(0,1)
	if Input.is_action_pressed("LEFT"):
		direction += Vector2(-1,0)
	if Input.is_action_pressed("RIGHT"):
		direction += Vector2(1,0)
	move_and_slide(direction * Speed)

	# mouse movement
	# position.x += (get_global_mouse_position().x - position.x) / Speed # position.x gets the mouse position.x, subtracts it from the x postion and divides by the Speed
	# position.y += (get_global_mouse_position().y - position.y) / Speed # position.y gets the mouse position.y, subtracts it from the y postion and divides by the Speed
