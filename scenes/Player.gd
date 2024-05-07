extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var movespeed = 500



func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	if Input.is_action_pressed("up"):
		motion.x -= 1
	
	motion = motion.normalized()
	motion = move_and_slide(motion * movespeed)
	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
