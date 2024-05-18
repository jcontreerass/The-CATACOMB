extends CharacterBody2D

var speed = 200


func _physics_process(_delta):
	var velocity = Vector2(0, 0)
	velocity = velocity.normalized()
	if move_and_slide():
		velocity.x = 0
		velocity.y = 0

func _input(_event):
	var animation = $AnimationPlayer
	#velocity.x = 0
	#velocity.y = 0
	if Input.is_action_just_pressed("right"):
		animation.play("running_right")
		velocity.y = 0
		velocity.x = 1 * speed
	if Input.is_action_just_pressed("left"):
		animation.play("running_left")
		velocity.y = 0
		velocity.x = -1 * speed
	if Input.is_action_just_pressed("down"):
		animation.play("running")
		velocity.x = 0
		velocity.y = 1 * speed
	if Input.is_action_just_pressed("up"):
		animation.play("running_up")
		velocity.x = 0
		velocity.y = -1 * speed
