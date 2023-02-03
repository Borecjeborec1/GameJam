extends KinematicBody2D

export var ACCELERATION = 450
export var FRICTION = 550
export var MAX_SPEED = 110
export var ROLL_SPEED = 150


var velocity = Vector2.ZERO
var roll_vector = Vector2.DOWN
var roll_finished = false


func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
		
	velocity = move_and_slide(velocity)
