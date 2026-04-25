extends StaticBody2D

func _ready() -> void:
	$col.disabled = true
	Global.saved_data.connect(_on_saved_data)

func _on_saved_data():
	$col.disabled = false
