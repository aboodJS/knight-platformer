extends CharacterBody2D


const SPEED = 120.0


@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: CharacterBody2D = %player
@onready var coin: Area2D = $"../../coins/coin"


var direction = 1

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	velocity.x = SPEED * direction
	# Handle jump.
	

	move_and_slide()


func _on_right_body_entered(body: Node2D) -> void:
	if  body != player and body != coin:
		animated_sprite_2d.flip_h = true
		direction = -1


func _on_left_body_entered(body: Node2D) -> void:
		if  body != player and body != coin:
			direction = 1
			animated_sprite_2d.flip_h = false
		


func _on_death_body_entered(body: CharacterBody2D) -> void:
	if body == player:
		get_tree().reload_current_scene()
