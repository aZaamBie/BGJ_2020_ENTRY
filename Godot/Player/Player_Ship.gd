extends KinematicBody2D

# variables
export var Speed = 3
export var MaxSpeed = 0
var direction = Vector2()

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

#export (int) var speed = 200
#
#var velocity = Vector2()
#
#func get_input():
#	look_at(get_global_mouse_position())
#	velocity = Vector2()
#	if Input.is_action_pressed("DOWN"):
#		velocity = Vector2(-speed, 0).rotated(rotation)
#	if Input.is_action_pressed("UP"):
#		velocity = Vector2(speed, 0).rotated(rotation)
#
#func _physics_process(delta):
#	get_input()
#	velocity = move_and_slide(velocity)

