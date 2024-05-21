extends Area2D


func _on_body_entered(_body):
	$sonido_moneda.play()
	if _body.name == "Player":
		queue_free()

func _process(delta):
	$AnimatedSprite2D.play("new_animation")
