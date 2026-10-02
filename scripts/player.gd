extends CharacterBody2D

@export var speed: float = 250.0

func _physics_process(_delta: float) -> void:
	# 1. 8-way directional input
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_vector * speed
	move_and_slide()

	# 2. Mouse tracking rotation
	look_at(get_global_mouse_position())
