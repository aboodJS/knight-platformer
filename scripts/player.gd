extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -280.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
		

		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	
	
	if direction != 0 and is_on_floor() == true:
		animated_sprite_2d.play('moving')
	elif is_on_floor() == false:
		animated_sprite_2d.play('fall')
	else:
		animated_sprite_2d.play('idle')
	
	
		
	
	if direction:
		velocity.x = direction * SPEED
		if velocity.x < 0: 
			animated_sprite_2d.flip_h = true

		elif velocity.x > 0:
			animated_sprite_2d.flip_h = false
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

		
		
		
	move_and_slide()
	
	
