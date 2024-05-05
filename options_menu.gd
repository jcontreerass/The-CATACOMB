extends Control



func _on_button_back_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")


func _on_button_volume_pressed():
	get_tree().change_scene_to_file("res://volume_menu.tscn")
