extends Control

func _ready():
	MenuMusic.play_music_level()

func _on_button_back_pressed():
	get_tree().change_scene_to_file("res://control.tscn")


func _on_button_volume_pressed():
	get_tree().change_scene_to_file("res://volume_menu.tscn")


func _on_button_video_pressed():
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")
