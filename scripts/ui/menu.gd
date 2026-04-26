extends Control

func _on_play_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/world.tscn")

func _on_credits_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ui/credits.tscn")
