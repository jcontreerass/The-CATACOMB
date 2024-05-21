extends Area2D


func _on_body_entered(_body):
	$sonido_moneda.play()
	$AnimatedSprite2D.play()
	if _body.name == "Player":
		queue_free()
