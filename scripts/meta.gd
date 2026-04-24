extends Area2D

var canPressE = false

func _process(_delta: float) -> void:
	if Input.is_action_just_released("e") and canPressE and not Global.isSavedData:
		Global.trigger_show_progress_layer()
		Global.trigger_hidden_press_e_layer()

func _on_body_entered(body: Node2D) -> void:
	if body as Player and not Global.isSavedData:
		Global.trigger_show_press_e_layer()
		Global.trigger_hidden_progress_layer()
		
		canPressE = true

func _on_body_exited(body: Node2D) -> void:
	if body as Player:
		Global.trigger_hidden_progress_layer()
		Global.trigger_hidden_press_e_layer()
		
		canPressE = false
