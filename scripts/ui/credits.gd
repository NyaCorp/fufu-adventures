extends Control

func _on_return_btn_pressed() -> void:
	await Fade.start_fade()
	get_tree().change_scene_to_file("res://scenes/ui/menu.tscn")
	await Fade.end_fade()
