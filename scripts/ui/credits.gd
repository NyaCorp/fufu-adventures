extends Control

func _on_return_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ui/menu.tscn")
