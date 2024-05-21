extends Control



func _on_button_play_pressed():
	$ButtonSound.play()
	get_tree().change_scene_to_file("res://scenes/levels.tscn")



func _on_button_options_pressed():
	$ButtonSound.play()
	get_tree().change_scene_to_file("res://options_menu.tscn")




func _on_button_exit_pressed():
	$ButtonSound.play()
	get_tree().quit()


func _ready():
	MenuMusic.play_music_level()
