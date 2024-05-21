extends Control






func _on_button_level_1_pressed():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_button_back_3_pressed():
	get_tree().change_scene_to_file("res://control.tscn")
