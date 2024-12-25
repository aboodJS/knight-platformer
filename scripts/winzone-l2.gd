extends Area2D

@onready var game_manager: Node = %"game manager"




func _on_body_entered(body: CharacterBody2D) -> void:
	if game_manager.points == 12:
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	else:
		pass
		
	
