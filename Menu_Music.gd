extends AudioStreamPlayer


const level_music = preload("res://sounds/menu_music.mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	stream = music
	volume_db = volume
	play()

func play_music_level():
	_play_music(level_music)

func play_button_sound():
	$AudioStreamPlayer2D.play()

func play_death_sound():
	$AudioStreamPlayer2D2.play()
