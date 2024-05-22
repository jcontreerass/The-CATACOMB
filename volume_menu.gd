extends Control

func _ready():
	MenuMusic.play_music_level()


func _on_button_back_2_pressed():
	get_tree().change_scene_to_file("res://options_menu.tscn")
	MenuMusic.play_button_sound()


func _on_master_volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	if value == -100:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)


func _on_music_volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("music"), value)
	if value == -100:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("music"), true)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("music"), false)


func _on_sfx_volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("effects"), value)
	if value == -100:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("effects"), true)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("effects"), false)
