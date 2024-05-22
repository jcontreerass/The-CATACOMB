extends Node2D

var cont = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	MenuMusic.play_music_level()





func _on_area_2d_body_entered(body):
	if body.name == "Player":
		MenuMusic.play_death_sound()
		get_tree().change_scene_to_file("res://scenes/failure.tscn")


func _on_area_2d_2_body_entered(body):
	if cont == 5 && body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/win.tscn")


func _on_coin_body_entered(body):
	cont = cont + 1
	$AudioStreamPlayer2D.play()
