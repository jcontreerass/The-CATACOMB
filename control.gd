extends Control



func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/levels.tscn")
	MenuMusic.play_button_sound()


func _on_button_options_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")
	MenuMusic.play_button_sound()


func _on_button_exit_pressed():
	MenuMusic.play_button_sound()
	get_tree().quit()


func _ready():
	MenuMusic.play_music_level()
