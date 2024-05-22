extends Control


func _on_button_levels_pressed():
	get_tree().change_scene_to_file("res://scenes/levels.tscn")
	MenuMusic.play_button_sound()
