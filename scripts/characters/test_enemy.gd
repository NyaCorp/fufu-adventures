extends CharacterBody2D

var speed = 100.0
var direccion = 1

@onready var ray_cast = $RayCast2D 

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if is_on_wall() or not ray_cast.is_colliding():
		cambiar_direccion()

	velocity.x = direccion * speed
	move_and_slide()

func cambiar_direccion():
	direccion *= -1
	ray_cast.position.x *= -1
	
	$spr.flip_h = direccion < 0
