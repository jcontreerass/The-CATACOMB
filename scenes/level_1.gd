extends Node2D


var cont = 0


func _ready():
	MenuMusic.play_music_level()


func _process(_delta):
	pass


func _on_coin_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()


func _on_coin_2_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()


func _on_coin_3_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()


func _on_coin_4_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()


func _on_coin_5_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()


func _on_area_2d_body_entered(body):
	if cont == 5 && body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/win.tscn")
