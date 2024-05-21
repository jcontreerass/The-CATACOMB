extends Control




const SLIDES = {
	"PRIMERA": {
		"label": "Usa las flechas/WASD/mando para moverte",
		"image": "res://images/Captura de pantalla 2024-05-20 221001.1.png",
		"button_label": "SEGUNDA",
		},
	"SEGUNDA":{
		"label": "Recoge todas las monedas para conseguir pasar el nivel",
		"image": "res://images/Captura de pantalla 2024-05-20 221113.png",
		"button_label": "BACK",
		}
	}

var current_slide

func _ready():
	MenuMusic.play_music_level()
	set_slide("PRIMERA")

func set_slide(slide: String) -> void:
	current_slide = SLIDES[slide]
	$Label.text = current_slide.label
	$TextureRect.texture = load(current_slide.image)
	$Button_SIGUIENTE.text = current_slide.button_label

func _on_button_siguiente_pressed():
	set_slide(SLIDES[$Button_SIGUIENTE.text])
	if SLIDES["SEGUNDA"]:
		if _on_button_siguiente_pressed():
			get_tree().change_scene_to_file("res://options_menu.tscn")
