extends Control



func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")



func _on_button_options_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")




func _on_button_exit_pressed():
	get_tree().quit()


func _ready():
	MenuMusic.play_music_level()
