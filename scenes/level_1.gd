extends Node2D

var cont
# Called when the node enters the scene tree for the first time.
func _ready():
	MenuMusic.play_music_level()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass





func _on_coin_body_entered(body):
	$AudioStreamPlayer2D.play()


func _on_coin_2_body_entered(body):
	$AudioStreamPlayer2D.play()


func _on_coin_3_body_entered(body):
	$AudioStreamPlayer2D.play()


func _on_coin_4_body_entered(body):
	$AudioStreamPlayer2D.play()


func _on_coin_5_body_entered(body):
	$AudioStreamPlayer2D.play()


func _on_area_2d_body_entered(body):
	if body.name == "player":
		get_tree().change_scene_to_file("res://scenes/win.tscn")
