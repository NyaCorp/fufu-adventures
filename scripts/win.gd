extends Control

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "si":
		await Fade.start_fade()
		get_tree().change_scene_to_file("res://scenes/ui/menu.tscn")
		await Fade.end_fade()
