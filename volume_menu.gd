extends Control

func _ready():
	MenuMusic.play_music_level()

func _on_button_back_2_pressed():
		get_tree().change_scene_to_file("res://options_menu.tscn")
