extends Area2D

@export var speed = 600

func _process(delta: float) -> void:
	position += transform.x * speed * delta

func _on_body_entered(_body: Node2D) -> void:
	queue_free()
