extends Area2D

@onready var character_body_2d: CharacterBody2D = %CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var game_manager: Node = %"game manager"
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var coin: Area2D = $"."
@onready var label: Label = $"../CharacterBody2D/Camera2D/Label"
@onready var end_text: Label = $"../end text"




func _on_body_entered(body: Node2D) -> void:
	coin.set_deferred('monitoring', false)
	animated_sprite_2d.animation = ""
	collision_shape_2d.disabled = true
	audio_stream_player_2d.play()
	game_manager.getPoints()
	label.showScore()
	end_text.changeText()
	
	

	
	
