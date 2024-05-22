extends Control



func _on_button_fullscreen_toggled(toggled_on):
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	MenuMusic.play_button_sound()



func _on_button_window_toggled(toggled_on):
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	MenuMusic.play_button_sound()


func _on_button_back_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")
	MenuMusic.play_button_sound()
