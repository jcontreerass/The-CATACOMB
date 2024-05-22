extends Control






func _on_button_level_1_pressed():
	MenuMusic.play_button_sound()
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_button_back_3_pressed():
	MenuMusic.play_button_sound()
	get_tree().change_scene_to_file("res://control.tscn")


func _on_button_level_2_pressed():
	MenuMusic.play_button_sound()
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
