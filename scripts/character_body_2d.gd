extends CharacterBody2D


const SPEED = 170.0



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	


func _on_right_body_entered(body: TileMapLayer) -> void:
	velocity.x = SPEED



func _on_left_body_entered(body: Node2D) -> void:
	velocity.x = SPEED * -1
	
