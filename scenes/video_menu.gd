extends Control




const SLIDES = {
	"primera": {
		"label": "Usa las flechas/WASD/mando para moverte",
		"image": "res://images/Captura de pantalla 2024-05-20 221001.1.png",
		},
	"segunda":{
		"label": "Recoge todas las monedas para conseguir pasar el nivel",
		"image": "res://images/Captura de pantalla 2024-05-20 221113.png",
		}
	}

var current_slide

func _ready():
	MenuMusic.play_music_level()
	set_slide("primera")

func set_slide(slide: String) -> void:
	current_slide = SLIDES[slide]
	$Label.text = current_slide.label
	$TextureRect.texture = load(current_slide.image)


func _on_button_siguiente_pressed():
	set_slide("segunda")
